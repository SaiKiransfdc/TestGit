public class CompanyEvent {
    @AuraEnabled
    public static String eventExample(String accname,String name,String lastname,String phone){
        account acc=[select Id from account where name =:accname limit 1];
        Contact con = new Contact();
        con.FirstName=name;
        con.LastName=lastname;
        con.Phone=phone;	
        con.AccountId=acc.Id;
        insert con;
        string result='successfull Inserted' +con.Id;
        return result;
    }
    
}