public class Integration {
    @AuraEnabled
  		public static list<string> callMe(Integer pincode){
        list<String> places= new list<String>();
        string url='http://postalpincode.in/api/pincode/'+pincode;
        Http http=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        string body =res.getBody();
        System.JSONParser jp=JSON.createParser(body);
        while(jp.nextToken()!=null){
            if(jp.getText() == 'Name'){
                jp.nextToken();
                places.add(jp.getText());
                
            }
        }
            system.debug(places);
      return places; 
            
    }

}