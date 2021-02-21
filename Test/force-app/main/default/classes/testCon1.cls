public class testCon1 {
    public  list<employee__c> emp {set;get;}
    public testCon1(){
        emp=[select name,id from employee__C];
    }
        public void getLimit(){
             emp=[select name,id from employee__C limit 5];
        }
    }