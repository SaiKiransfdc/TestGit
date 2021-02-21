public class ApexEvent {
    @auraEnabled
    public static String getEvent(String accname, String fn, String ln){
        Account acc = [select Id,Name from Account where Name=:accname];
        Contact con = new Contact();
        con.FirstName=fn;
        con.LastName=ln;
        con.AccountId=acc.Id;
        insert con;
        String result='successfully Inserted' +con.Id;
        return result;
        
    }

}