public class SelectedApex {
@auraEnabled 
    public static list<Account> getName(){
        list<Account> acc=[select Name from Account];
        return acc;
    }
}