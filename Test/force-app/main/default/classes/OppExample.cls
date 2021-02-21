public class OppExample {
    public string stage {set;get;}
    
    public string query {set;get;}
    public list<opportunity> opp {set;get;}
    public void getMethod(){
              
        query='Select Name,StageName,CloseDate from Opportunity';
        query=query + ' Where StageName Like: \'%' +stage+ '%\'';
        opp=Database.query(query);
    }
}