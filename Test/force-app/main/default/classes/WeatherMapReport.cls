public  with sharing Class WeatherMapReport {
public  String City{get;set;}
public  String Temp{get;set;}
public  String Pressure{get;set;}
public  String Humidity{get;set;}
public  String Temp_max{get;set;}
public  String Temp_min{get;set;}
public  string cloudiness{get;set;}
public  time  sunrise{get;set;}





public WeatherMapReport(ApexPages.StandardController StdController) {

    Account acct=(Account)stdcontroller.getRecord();
    acct=[Select id,ShippingCity from account where Id=: acct.Id];
   
    String acctcity = acct.shippingcity;
    String APIkey= '2e71a9c400ef22d153856ca70e141fa3';
    String Requestendpoint='Https://api.openweathermap.org/data/2.5/weather';
        
        Requestendpoint+='?q='+acctcity;
        Requestendpoint+='&units=metric';
        Requestendpoint+='&appid='+apikey;
       
       
        Http Http=new Http();
        HttpRequest Request=new HttpRequest();
        Request.setEndPoint(Requestendpoint);
        Request.setMethod('GET');
        HttpResponse response=Http.send(Request);
        
        if(response.getStatusCode()==200)
        {
            map<String,object> results=(map<String,object>)JSON.deserializeUntyped(response.getBody());
            city=String.valueOf(results.get('name'));
                map<String,object> mainresults=(map<String,object>)(results.get('main'));
                
                temp=String.valueOf(mainresults.get('temp'));
                pressure=String.valueOf(mainresults.get('pressure'));
                humidity=String.valueOf(mainresults.get('humidity'));
                 temp_max=String.valueOf(mainresults.get('temp_max'));
                temp_min=String.valueOf(mainresults.get('temp_min'));
                cloudiness=String.valueOf(mainresults.get('cloudiness'));
               
               
                 string s = string.valueOf(sunrise);
                 s=String.valueOf(mainresults.get('s'));
                 system.debug('****'+ sunrise);
                 system.debug('****'+ mainresults);
                 system.debug(response.getbody());
             
                
        
        
        }
            else
            {
                ApexPages.Message myMsg=new ApexPages.Message(ApexPages.severity.error,'These was an error in reading data');
                ApexPages.addmessage(myMsg);
            }

    }

}