public class TabExample {
    @auraEnabled
    public static string getCreate(Account acc,Contact con,Opportunity opp){
        Savepoint sp = Database.setSavepoint();
        try{
        insert acc;
        con.AccountId=acc.Id;
        insert con;
        opp.AccountId=acc.Id;
        opp.CloseDate=system.today()+12;
        insert opp;
        return '' +acc.Id;
        }
        catch(exception ex){
            Database.rollback(sp);
            return 'Falied';
        }
    }
    
}