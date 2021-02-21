public  with sharing class WeatherMapApi {
public  string city{get;set;}
public  string temperture{get;set;}
public  string pressure{get;set;}
public  string Humidity{get;set;}

public WeatherMapApi(ApexPages.StandardController stdcontroller) {

    Account acct=(Account)stdcontroller.getRecord();
    acct=[Select id,shippingcity from account where Id=: acct.id];
   
    string acctcity = acct.shippingcity;
    string APIkey= '2e71a9c400ef22d153856ca70e141fa3';
    string requestendpoint='https://api.openweathermap.org/data/2.5/weather';
        
        requestendpoint+='?q='+acctcity;
        requestendpoint+='&units=metric';
        requestendpoint+='&appid='+apikey;
       
       
        Http http=new http();
        Httprequest request=new Httprequest();
        request.setEndPoint(requestendpoint);
        request.setMethod('GET');
        HttpResponse response=Http.send(request);
        
        if(response.getStatusCode()==200)
        {
        map<string,object> results=(map<string,object>)JSON.deserializeUntyped(response.getBody());
        city=string.valueOf(results.get('name'));
        map<string,object> mainresults=(map<string,object>)(results.get('main'));
        temperture=string.valueOf(mainresults.get('temperture'));
        pressure=string.valueOf(mainresults.get('pressure'));
        humidity=string.valueOf(mainresults.get('humidity'));
        
        }
        else
        {
        ApexPages.Message myMsg=new ApexPages.Message(ApexPages.severity.error,'these was an error in reading data');
        ApexPages.addmessage(myMsg);
        }

    }

}