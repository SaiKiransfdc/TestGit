public class ApexUseCase {
    @auraEnabled 
    public static list<Opportunity> getData(string searchs){
        String likeParam='%' +searchs+ '%';
        string query= 'Select Name,StageName,Closedate from Opportunity where StageName like :likeParam limit 10 ';
        list<Opportunity> opp=Database.query(query);
        return opp;
    }
}