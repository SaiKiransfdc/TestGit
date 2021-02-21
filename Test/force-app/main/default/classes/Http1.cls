public class Http1 {
    public String pincode {set;get;}
    public list<String>  place {set;get;}
    public void callMe(){
        place= new list<String>();
        
        Http http= new http();
        string ep='http://postalpincode.in/api/pincode/'+pincode;
        HttpRequest req=new HttpRequest();
        req.setEndpoint(ep);
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        string body=res.getBody();
        system.JSONParser jp=Json.createParser(body);
        while(jp.nextToken()!=null){
            if(jp.getText()=='Name'){
                jp.nextToken();
                place.add(jp.getText());
            }
        }
    }
    
}