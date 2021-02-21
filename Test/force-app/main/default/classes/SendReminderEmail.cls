global class SendReminderEmail implements Database.Batchable<sObject> {
global String query;
global String subject;
global String body;


    global Database.QueryLocator start(Database.BatchableContext bc) {
    
    return Database.getQueryLocator(query);


    }

    global void execute(Database.BatchableContext bc, List<book__c> scope) {
     for (book__c book: scope) {
        EmailManager.sendMail(book.Email__c, this.subject, this.body);
        system.debug('the Email sent sucessfully');
    }
}

    

    global void finish(Database.BatchableContext bc) {

    }

}