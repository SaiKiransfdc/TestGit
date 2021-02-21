Global class IntTest2 {
    public String ClientId {set;get;}
    public String ClientSecret {set;get;}
    public String username {set;get;}
    public String password {set;get;}
    public String endpoint {set;get;}
    public String token {set;get;}
    public IntegrationTest__c data {set;get;}
    public IntTest2(){
        endpoint=' https://login.salesforce.com/services/oauth2/token ';
        data=[select ClientId__c,ClientSecret__c from IntegrationTest__c where Name=:'SFDC'] ;
        ClientId=data.ClientId__c;
        ClientSecret=data.ClientSecret__c;
        
    } 
    public void requestToken(){
        Http http = new Http();
        HttpRequest req =new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('POST');
        String body='grant_type=password';
        body=body+'&client_id='+clientId;
        body=body+'&client_secret='+clientsecret;
        body=body+'&username='+userName;
        body=body+'&password='+password;
        req.setBody(body);
        HttpResponse res=http.send(req);
        token=res.getBody();
       
    }

}