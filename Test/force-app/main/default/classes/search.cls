public class search {
    @auraEnabled
    public static list<book__c> searchText(string searchparams){
        string likeparams ='%' +searchparams+ '%';
     	string query='';
        if(searchparams != null){
          query = 'select Name,Id from book__c where Name Like : likeparams';
        }else{
          query = 'select Name,Id from book__c LIMIT 10';
        }
            list<book__c> bq = Database.Query(query);
               return bq;                               
            }
}