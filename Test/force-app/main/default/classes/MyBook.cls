public class MyBook
{
    public static void BookDiscount(Book__c[] books) {
    for(book__c b:books){
    try{
    
    b.Price_of_Book__c=b.Price_of_Book__c*0.9;
    }
    catch(exception e)
    {
    System.debug('Exception type caught: ' + e.getTypeName());   

    System.debug('Message: ' + e.getMessage());   

    System.debug('Cause: ' + e.getCause());    // returns null

    System.debug('Line number: ' + e.getLineNumber());   

    System.debug('Stack trace: ' + e.getStackTraceString()); 
    }
    }
}
}