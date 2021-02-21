public class testloop {
    public static string test(){
       
        list<book__c> dup=[select id,name from book__c];
        system.debug('result' + dup);
        return test();
        
    }

}