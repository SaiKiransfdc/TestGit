public class bookList {
    @auraEnabled
    public static list<book__c> getBook( string bkId){
        list<book__c> book=[select Name, id, Address__c, EMail__c from book__c where Id =: bkId];
        return book;
    }
    
    @auraEnabled
    public static book__c getBookRecord(book__c bk){
        insert bk;
        return bk;
    }

}