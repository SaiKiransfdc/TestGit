global class TestBatchJob implements Database.Batchable<SObject>
{
    //
    //Implemetation of the Database.Batchable interface
    //
 global Database.QueryLocator start(Database.BatchableContext context){
        string query='Select Id,Name from Account where createdDate=today';
         
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext context, list<Account> scope)
    {
        delete(scope);
     
        
    }

global void finish(Database.BatchableContext BC){
   // Get the ID of the AsyncApexJob representing this batch job
   // from Database.BatchableContext.
   // Query the AsyncApexJob object to retrieve the current job's information.
   AsyncApexJob a = [SELECT Id, Status,
      TotalJobItems 
      FROM AsyncApexJob WHERE Id =
      :BC.getJobId()];
   // Send an email to the Apex job's submitter notifying of job completion.
   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String[] toAddresses = new String[]{'asaikiran44@gmail.com'};
   mail.setToAddresses(toAddresses);
   mail.setSubject('Apex Sharing Recalculation ' + a.Status);
   mail.setPlainTextBody
   ('The batch Apex job processed ' + a.TotalJobItems +
   ' batches with '+ a.NumberOfErrors + ' failures.');
     System.debug('***** ' +mail);
    Messaging.Email[] emails=new Messaging.Email[]{mail};
   Messaging.sendEmail(emails);
}
}