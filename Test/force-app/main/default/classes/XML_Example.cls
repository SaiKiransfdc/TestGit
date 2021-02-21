public class XML_Example {
    public String xmlString  {set;get;}
    public XML_Example(){
        List<Account> accounts =[select Name,Industry,(Select lastname,firstName from Contacts) from Account where industry='Energy'];
        DOM.Document doc =new DOM.Document();
        DOM.XMLNode root =doc.createRootElement('Accounts',null,null);
        if(accounts.size()>0){
            root.setAttribute('Count',''+accounts.size());
            for(Account a: accounts){
                DOM.XMLNode acc =root.addChildElement('Account',null,null);
                acc.setAttribute('Name',a.Name);
                acc.setAttribute('Industry',a.Industry);
                if(a.contacts.size()>0){
                    DOM.XMLNode contacts =acc.addChildElement('Contacts',null,null);
                    contacts.setAttribute('count',''+a.contacts.size());
                    for(Contact c:a.contacts){
                        DOM.XMLNode con =contacts.addChildElement('Contact',null,null);
                        con.setAttribute('LastName',c.LastName);
                        if(c.firstName!=null&&c.lastName!=''){
                            con.setAttribute('FirstName',c.firstName);
                        }
                    }
                }
            }
        }
        xmlString =doc.toXmlString();
    }
}