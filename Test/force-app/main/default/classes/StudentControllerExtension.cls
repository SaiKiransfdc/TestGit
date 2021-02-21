public class StudentControllerExtension 
{
      public blob picture { get; set; }
    public String errorMessage { get; set; }

    private final Student__c student;
    private ApexPages.StandardController stdController;

    public StudentControllerExtension(ApexPages.StandardController stdController) {
        this.student = (Student__c)stdController.getRecord();
        this.stdController = stdController;
    }

    public PageReference save() {
        errorMessage = '';
        try {
            upsert student;
            if (picture != null) {
                Attachment attachment = new Attachment();
                attachment.body = picture;
                attachment.name = 'Name' + student.id + '.jpg';
                attachment.parentid = student.id;
                attachment.ContentType = 'application/jpg';
                insert attachment;
                student.Picturepath__c = '/servlet/servlet.FileDownload?file='
                                          + attachment.id;
                update student;
            }
            return new ApexPages.StandardController(student).view();
        } catch(System.Exception ex) {
            errorMessage = ex.getMessage();
            return null;
        }
    }
}