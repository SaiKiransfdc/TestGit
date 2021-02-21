public class ContactInsert {
    @auraEnabled 
    public static Id getCon(Contact con){
        try{
            insert con;
        }catch(exception e){
            system.debug('Got Exception ' +e.getMessage());
        }
        return con.Id;
    }
    
}