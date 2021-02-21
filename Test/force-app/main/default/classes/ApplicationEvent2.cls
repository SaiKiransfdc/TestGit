public class ApplicationEvent2 {
    @auraEnabled 
    public static String getEvent(String accname){
        Account acc=[select id, name from account where Name=:accname];
        return ''+acc.Id;
    }
    @auraEnabled 
    public static list<Contact> getCon(String accId){
        list<contact> con=[select Id,Name,Email from contact where AccountId=:accId];
        return con;
    }
    @auraEnabled 
    public static list<opportunity> getOpp(String accId){
        list<opportunity> opp=[select Name,stageName, CloseDate,amount from opportunity where AccountId=:accId];
        return opp;
    }
    @auraEnabled 
    public static list<Case> getCase(String accId){
        list<Case> cse=[select CaseNumber, subject, priority from Case where AccountId=:accId];
        return cse;
    }


}