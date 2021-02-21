@restresource(urlmapping='/showAccountdetail')
global class Accnt{
@httpget
    global static  list<employee__c> getacct(){
    list<employee__c> accts;
    try{
    accts=[select name,address__c from employee__c limit 5];
    return accts;
        }
    catch(exception ex){
    system.debug('error'+ex.getmessage());
        }
        return accts;
    }
    
    @httpdelete
    global static  list<employee__c> getdeleteacct(){
    list<employee__c> accts;
    try{
    accts=[select name,address__c from employee__c limit 2];
    return accts;
        }
    catch(exception ex){
    system.debug('error'+ex.getmessage());
        }
        return accts;
    }

}