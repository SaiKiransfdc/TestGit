public class RandomContactFactory{
    public static List<Contact> generateRandomContacts(Integer noOfCon, String conLstNm){
        List<Contact> LstCon = new List<Contact>();
        for(Integer i = 1; i <= noOfCon; i++){
            Contact con = new Contact(FirstName = 'Test'+i, LastName = 'conLstNm');
            LstCon.add(con);
        }
        
        return LstCon;
    }
}