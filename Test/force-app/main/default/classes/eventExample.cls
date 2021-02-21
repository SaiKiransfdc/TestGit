public class eventExample {
    @auraEnabled
    public static String eventOne(string accname,string firstname,string lastname,string phone){
        account acc = [select Id from account where name=:accname limit 1];
        contact con =new contact();
        con.FirstName = firstname;
        con.lastName = lastname ;
        con.phone = phone;
        con.AccountId = acc.Id;
        insert con;
        string result = 'sucessfully inserted with contactId:' +con.Id;
        return result;
    }
}