public with sharing class AccController {
    @AuraEnabled
    public static Account  getContact() {
        return [select Id, Name from account Limit 1];
    }

}