public class TestSchedule implements Schedulable {
    public void execute(SchedulableContext sc){
        TestBatchJob test= new TestBatchJob();
             Database.executebatch(Test);
        }
    }