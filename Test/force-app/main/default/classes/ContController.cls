public with Sharing class ContController {
@auraEnabled
    public static list<Contact> getAdd(string accountId){
         list<contact> address=[select firstname,lastname,phone from contact where accountid =: accountId];
        return address;
    }
    @auraEnabled
    public static Contact creatContact(contact con, Id AccountId){
        con.AccountId = AccountId;
        insert con;
        return con;
    }
}