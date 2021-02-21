public with sharing class  SavingsAccount
{
   
	String ownerName;
	decimal balance;
    decimal interest;

	public SavingsAccount(String ownerName, decimal  balance,decimal interest) {
		this.ownerName = ownerName;
		this.balance = balance;
		this.interest=interest;
	}
    //transfering amount from savings account,dedcutig from source and adding balance to target account
	public void transfer(SavingsAccount accountToTransfer,decimal amountToTransfer){
		deductBalance(amountToTransfer);
		accountToTransfer.deposit(amountToTransfer);		
	}
    //iterest calculation based on number of years
	public void applyInterest(integer numberOfYearsOfIntereset){
		if(numberOfYearsOfIntereset>0){
			balance=this.balance*((1+interest).pow(numberOfYearsOfIntereset));
            system.debug('final balance after intereset');
		}else{
            system.debug('Interest cannot be negative value');
			throw new IllegalArgumentException('Interest cannot be negative value');
		}		
	}
    //depositing amount to saving account
	public void deposit(decimal amount) {
		if (amount < 0) {            
            system.debug('Cannot deposit a negative amount');
			throw new IllegalArgumentException('Cannot deposit a negative amount');
		}
		this.balance += amount;
	}
    // deducting balance ,As part of fund transfer between accounts
	void deductBalance(decimal amountToDeduct){
		if (this.balance < amountToDeduct) {
            system.debug('Insuffiecient funds to transfer');
			throw new IllegalArgumentException('Insuffiecient funds to transfer');
		}
		this.balance -= amountToDeduct;
	}
    public decimal getBalance(){
    	return this.balance;    
    }
}