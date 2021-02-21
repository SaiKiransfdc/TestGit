public  with sharing Class WeatherMap {
public  String City{get;set;}
public string Temperature{get;set;}
public  String Pressure{get;set;}
public  String Humidity{get;set;}
public string cloudiness{get;set;}

public WeatherMap(ApexPages.StandardController stdController) {

    Account acct=(Account)stdController.getRecord();
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
        temperature=String.valueOf(mainresults.get('temperature'));
        pressure=String.valueOf(mainresults.get('pressure'));
        humidity=String.valueOf(mainresults.get('humidity'));
        cloudiness=String.valueOf(mainresults.get('cloudiness'));
        
        }
        else
        {
        ApexPages.Message myMsg=new ApexPages.Message(ApexPages.severity.error,'These was an error in reading data');
        ApexPages.addmessage(myMsg);
        }

    }

}