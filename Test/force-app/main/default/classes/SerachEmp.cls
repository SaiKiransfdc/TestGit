public  class SerachEmp {
    @auraEnabled
    public static list<SObject> searchQuery(string searchWorld){
        string likeParam = '%' +searchWorld+ '%';
         string Question='';
        if(searchWorld != null){
         Question ='select Name,Id from Employee__c where Name Like : likeParam';
        }else{
          Question ='select Name,Id from Employee__c LIMIT 10'; 
        }
            list<SObject> sobjectser = Database.query(Question);
           return sobjectser;
    }

}