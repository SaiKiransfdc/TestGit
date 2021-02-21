public class VFPage17 {
    public string selectItem {set;get;}
    public Integer count {set;get;}
    public void getDate(){
        if(selectItem=='Housing')
            count=1;
        else if(selectItem =='Employment')
            count=2;
    }
}