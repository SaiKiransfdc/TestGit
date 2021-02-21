public class SoqlExampl {
    public string accName {set;get;}
    public string accIndustry {set;get;}
    public list<account> acc {set;get;}
   
    public void getMethod(){
    		string query;
        query='select Name,Industry,Rating,Phone from Account';
        if(accName!='' && accIndustry!='')
            query=query+ 'where Name=\'' +accName+ '\' and Industry=\'' +accIndustry+ '\'';
        else if(accName!='')
            query =query+ ' Where Name=\''+accName+ '\'';
        else if(accIndustry!='')
            query= query+ ' where Industry= \'' +accIndustry+ '\'';
        acc=Database.query(query);
    }
}