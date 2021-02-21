public  class ShowModal{
    @auraEnabled
    public Static  list<Contact> getMethod(){
        list<Contact> opp = [Select id,FirstName,LastName,Phone,Email from Contact limit 10];
        return opp;
    }
}