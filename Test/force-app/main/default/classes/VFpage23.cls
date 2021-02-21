public class VFpage23 {
    public String Name {set;get;}
    public String City {set;get;}
    public String Gender {set;get;}
    public Integer Age {set;get;}
    public Decimal Salary {set;get;}
    public void getMethod(){
        if(City=='Hyderabad' && Gender=='Male'){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.CONFIRM,'Successfully you are Hyderabad');
            apexpages.addMessage(msg);
        }else if(City =='Chennai' && Gender=='Female'){
            Apexpages.Message msg1=new Apexpages.Message(Apexpages.Severity.Error,'Sorry only for Hyderabad');
            Apexpages.addMessage(msg1);
        }
    }
    public pageReference getPage(){
        pageReference p= new pageReference('/0010b00002M9iqy');
        return p;
    }
}