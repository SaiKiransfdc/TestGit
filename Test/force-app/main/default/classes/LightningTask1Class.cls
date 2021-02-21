public class LightningTask1Class {
    @auraEnabled
    public static list<account> getData(){
        list<account> acc =[Select Name,Rating,Industry,Phone from Account];
            return acc;
    }

}