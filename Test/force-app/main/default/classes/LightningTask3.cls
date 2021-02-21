public class LightningTask3 {
    @auraEnabled
    public static Id getData(contact con,Id accId){
        con.AccountId= accId;
        insert con;
        return con.Id;
    }

}