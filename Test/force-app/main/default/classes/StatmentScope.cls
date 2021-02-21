public class StatmentScope {

    public Decimal total,discount,amount;
    public static decimal statment1(Integer books, Decimal price,String name ){
        Decimal total,discount,amount;
         total=books*price;
      	if(name =='sai')
        discount=total*0.20 ;
        	else
             discount=total*0.30;
        amount=discount-total;
        system.debug('Result' +amount);
        return amount;
    }
    
}