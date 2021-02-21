public class sam{
    public static sobject getacc(){
      account acc=[select id ,name from account];
        return acc;
        
    }
}