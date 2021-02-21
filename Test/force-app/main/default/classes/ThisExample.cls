public class ThisExample {
    public   String Name;
    public   Integer Experience;
    public static Decimal Salary;
    public static String City;
    public ThisExample(){
    }
    public ThisExample(string Name){
        This.Name=Name;
    }
    public ThisExample(string Name,Integer Experience){
        This.Name=Name;
        This.Experience=Experience;
    }
    public void main(){
        if(Experience>=3){
            Salary=3300.00;
            City='Hyd';    
        } else{
            Salary=10000.00;
            City='Ben';
        }
    }
    public  string show(){
        system.debug('Name' +Name);
        system.debug('Exp' +Experience);
        system.debug('Salary' +Salary);
        system.debug('City' +City);
        return Name;
    }
    
    
}