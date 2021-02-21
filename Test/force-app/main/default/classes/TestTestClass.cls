@isTest
public class TestTestClass {
    @isTest
    static void getTest(){
        TestClass t =new TestClass();
        t.getMethod();
        system.assertEquals('Testing', t.name);
        system.assertEquals(46, t.age);
        system.assertEquals(2345.00, t.salary);
        
    }
    
}