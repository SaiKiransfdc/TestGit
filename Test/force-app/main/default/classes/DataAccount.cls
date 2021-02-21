public class DataAccount {
    
    @AuraEnabled
    public static list<account> getData(){
    list<account> acc =[select Name,Rating ,Industry,Phone, AnnualRevenue from Account];
    return acc;
    }
}