public class ApexTest {
    @auraEnabled 
    public static string getDate(string mail ){
        string result;
        Contact con = [select id,Name,Email from contact where Email =: mail];
        if(con.Email =='spavlova@uog.com'){
            Contact con1= new contact();
            con1.FirstName='sai';
            Con1.LastName='Akula';
            insert con1;
           result='Successfull inserted' +Con1;
           
        } else {
            Contact con2= new contact();
            Con2.FirstName='Kiran';
            Con2.LastName='Akula';
            insert con2;
           result='Successfull inserted' +Con2;
        }
        system.debug('Result===' +result);
        return result;
        
    }
}