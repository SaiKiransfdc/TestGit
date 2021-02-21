@restresource(urlmapping='/showAccountArraydetail')
global class Accntarray{
@httpget
    global static employee__c[] getacct(){
    employee__c[] accts;
    try{
    accts=[select name,address__c from employee__c limit 25];
    return accts;
        }
    catch(exception ex){
    system.debug('error'+ex.getmessage());
        }
        return accts;
    }
    }