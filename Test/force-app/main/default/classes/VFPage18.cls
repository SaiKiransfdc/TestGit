public class VFPage18 {
    public String Selected {set; get;}
    public String SelectItem{set; get;}
    public Integer flag {set;get;}
    public Integer count {set;get;}
    public void show(){
        if(Selected=='Student')
            flag=1;
        else if(Selected=='Employee')
            flag=2;
        else if(Selected =='Bussiness')
            flag=3;
        else
            flag=0;
    }
    
    public void stuShow(){
        if(SelectItem=='cse')
            count=4;
        else if(SelectItem=='ece')
            count=5;
        else if(SelectItem =='eee')
            count=6;
        else
            count=0;
    }
    
    
}