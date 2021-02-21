public class Filter{
    @auraEnabled 
    public static  list<Student> getStudent(){
        list<Student> std= new list<Student>();
        Student s1=new Student('Sai','cse','Hyd');
        Student s2=new Student('Kiran','ece','Ben');
        Student s3=new Student('Naveen','cse','Chennai');
        Student s4=new Student('Vamsi','cse','Bombay');
        std.add(s1);
        std.add(s2);
        std.add(s3);
        std.add(s4);
        return std;
    }    
    
    
    public class Student{
        @auraEnabled public string name;
        @auraEnabled public string branch;
        @auraEnabled public string city;
        Student(string name,string branch,string city){
            this.name=name; 
            this.branch=branch; 
            this.city=city; 
        }
    }
}