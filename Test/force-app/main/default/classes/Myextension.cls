public class Myextension {
private final employee__c emp;
    public  Myextension(ApexPages.StandardController stdcontroller)
    {
    this.emp=(employee__C)stdcontroller.getrecord();
}

public string getgreeting(){
 return 'hello '+emp.empid__c+'';
}
}