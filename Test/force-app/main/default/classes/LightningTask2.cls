public class LightningTask2 {
    @auraEnabled
    public static Id getData(account acc){
        insert acc;
        return acc.Id;
 }
    
}