public class DataCreate {
    @auraEnabled 
    public static list<Account> getCreate(){
        list<Account> acc=[select Id, Name,Industry,Phone,Rating from Account limit 5];
        return acc;
       
    }

}