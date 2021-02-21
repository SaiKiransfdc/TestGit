public class VF_Apex {
    public account  acc {set;get;}
    public VF_Apex(){
        acc= new Account(); 
    }
    public pageReference action(){
        pageReference p;
        insert acc;
        p=new PageReference('/'+acc.Id);
        return p;
    }
}