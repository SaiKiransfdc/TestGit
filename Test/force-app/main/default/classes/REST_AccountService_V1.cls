@RestResource(urlMapping='/v1/accounts/*')
global with sharing class REST_AccountService_V1 {
    
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Account result = [SELECT Id, Name, Phone, Website, BillingState FROM Account WHERE ID = :accountId];
        return result;
        
    }
    @HttpDelete
     global static String deleteCases() {
     RestRequest req = RestContext.request;
     RestResponse res = RestContext.response;
     String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website, BillingState FROM Account WHERE ID = :accountId];
    return 'Successfully Deleted';
  }
  @HttpPost 
  global static String createNewAccount(String acctName, String descr) {
    Account a =new Account();
    a.Name=acctName;
    a.Description=descr;
    insert a;
     return a.id;
   }
    
}