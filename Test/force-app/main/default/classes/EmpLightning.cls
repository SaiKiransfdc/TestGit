public class EmpLightning {
    @auraEnabled
    public static string empLig(string name,string industry,string phone){
        string result;
        try{
           Account acc=new Account();
            acc.Name= name;
            acc.Industry=industry;
            acc.Phone=phone;
            insert acc;
            result ='successfully inserted'     +acc.Id;
        }
        
            catch(Exception e){
                result='failed to insert'+e.getTypeName();
            }
        return result;
        }
    
}