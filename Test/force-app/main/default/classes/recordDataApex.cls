public class recordDataApex {
    @auraEnabled
    public static list<Contact> getCon(string rId){
       list<contact> con=[select Id,Name,Email from Contact where AccountId=:rId];
        return con;
    }

}