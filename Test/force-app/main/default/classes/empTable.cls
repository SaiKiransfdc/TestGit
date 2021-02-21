public class empTable {
    @auraEnabled
    public static string empExample(string name, string phone,integer num,string subject,string gender){
        string result;
        try{
        student__c std=new student__c();
        std.Name_del__c=name;
        std.Phone__c=phone;
        std.Roll_Number__c=num;
        std.Subject__c=subject;
        std.Gender__c=gender;
            insert std;
            result='successfully inserted' +std.Id;
        }
        catch(Exception e){
            result= 'Getting Error while inserting' +e.getTypeName();
        }
        return result;
        
    }

}