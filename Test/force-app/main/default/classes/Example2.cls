public class Example2 {
    public list<contact> con {set; get;}
    public Integer siz {set;get;}
    public string nam {set;get;}
    public void Method(){
        con=[Select LastName,FirstName,Email,Phone from Contact limit :siz];
    }
    public void getMethod(){
        con=[Select LastName,FirstName,Email,Phone from Contact where FirstName=: nam];
        
    }
    
}