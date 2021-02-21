public class VFPage16 {
    public integer Amount {set;get;}
    public integer year {set;get;}
    public integer rate{set;get;}
    public integer payment {set;get;}
    public void calculate(){
        Amount=(payment*rate*year)/100;
        
    }
    public void cancel(){
        amount=null;
        payment=null;
        year=null;
        rate=null;
        
    }

}