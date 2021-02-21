public class ClassEx {
    public Account acc {set;get;}
    public list<Contact> con {set;get;}
    public ClassEx(){
        acc=new Account();
        con =new list<Contact>();
        getData();
    }
    public void getData(){
        Contact c= new Contact();
        con.add(c);
    }
    public pagereference create(){
        pagereference p;
        Integer count=[Select count() from Account Where Name=:acc.Name];
        if(count>0){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,'Duplicate Records Creating');
            ApexPages.addMessage(msg);
        }else{
            Insert acc;
            for(Contact c:con){
                c.AccountId=acc.Id;
            }
            Insert con;
            Apexpages.Message ma=new Apexpages.Message(Apexpages.Severity.CONFIRM,'Successfull Inserted');
            apexpages.addMessage(ma);
            p= new pagereference('/'+acc.Id);
        }
        return p;
        
    }
    
}