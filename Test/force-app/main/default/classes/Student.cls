public class Student {
		
			public string firstName;
			public String lastName;
			
			public Student(string lastnam,string firstnam){
				firstName=firstnam; 
				lastName=lastnam;
			}
			
			public void show(){
			
				System.debug('FirstName:'+firstName);
				System.debug('LastName:'+lastName);
				
			}
		}