public class VFPage20 {
       public String Name {set;get;}
       public String City {set;get;}
       public Decimal Salary {set;get;}
       public void getMethod(){
           if(City==''){
               ApexPages.Message msg=new ApexPages.Message(ApexPages.Severity.ERROR,'Please fill blank ');
               ApexPages.addMessage(msg);
           }else if (City!=' ' && Salary>=0){
               ApexPages.Message msg1= new ApexPages.Message(ApexPages.Severity.CONFIRM,'SuccessFully Filled');
               ApexPages.addMessage(msg1);
               
           }
       }
}