public class VFpage19 {
    public void VFpage(){
        Apexpages.Message msg=new Apexpages.Message(Apexpages.severity.CONFIRM,'Successfully Done');
        Apexpages.Message msg1=new Apexpages.Message(Apexpages.Severity.Warning,'This Warning Page');
        Apexpages.Message msg2=new ApexPages.Message(Apexpages.Severity.Info,'This Information Page');
        Apexpages.Message msg3=new Apexpages.Message(Apexpages.Severity.ERROR,'This Error Page');
        Apexpages.addMessage(msg);
        Apexpages.addMessage(msg1);
        Apexpages.addMessage(msg2);
        Apexpages.addMessage(msg3);
    }
    
}