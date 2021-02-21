@isTest
public class MyBookTest 
{
    static testMethod void ValidateMyBook()
    {
        book__c b=new book__c(Name='salesforce',Price_of_Book__c=100);
        System.debug('price of book:'+b.Price_of_Book__c);
        insert b;
        b=[select id,Price_of_Book__c from book__c where ID=:b.id];
        System.assertEquals(90,b.Price_of_Book__c);
    }
}