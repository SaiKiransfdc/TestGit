@isTest	
public class TestRestrictContactByName {	
    @isTest static void testContactTrigger() {	       
        System.Test.startTest();	        
        Contact c = new Contact(LastName = 'INVALIDNAME');	       
        Database.SaveResult result = Database.insert(c, false);	       
        System.assert(!result.isSuccess());	       
        System.assert(result.getErrors().size() > 0);	      
        System.Test.stopTest();	   
    }	  	
}