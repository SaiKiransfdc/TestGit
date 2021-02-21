public class ConList {
    @auraEnabled
    public static list<contact> getCon(String accId){
        list<contact> con=[select Id,lastName,FirstName,Phone from contact where AccountId =: accId];
        return con;
    }

}