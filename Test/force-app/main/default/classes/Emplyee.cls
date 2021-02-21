public class Emplyee {
    public static void method()
    {
        try{
        employee__c emp=new employee__c();
            company__C cmpy=new company__C();
     	   emp.EmpFullName__c='kn';
           emp.DOB__c=system.today()-100;
           emp.DateOfJoining__c=system.today()-2;
           emp.Company__c=cmpy.id;
           emp.Address__c='ieg';
        emp.EmpId__c='33ww';
            insert emp;
        }
        catch(exception e){
            system.debug('error'+e);
        }
        
     
        
    }
    

}