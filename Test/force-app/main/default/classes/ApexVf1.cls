public class ApexVf1 {
    public Integer aVal {set; get;}
    public Integer bVal {set; get;}
    public Integer result {set; get;}
    public void addVal(){
        result=aVal+bVal;
    }
     public void mulVal(){
        result=aVal*bVal;
    }
     public void subVal(){
        result = aVal-bVal;
    }
     public void reSet(){
         aVal=null;
         bVal=null;
        Result=null;
         
    }

}