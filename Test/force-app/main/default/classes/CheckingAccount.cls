public  with sharing class CheckingAccount {
	
	String ownerName;
	double balance;

	public CheckingAccount(String ownerName, double balance) {
		this.ownerName = ownerName;
		this.balance = balance;
	}

	public void transfer(CheckingAccount destinationAccount, double amount) {
		deductBalanceFromSourceAccount(amount);
		//destinationAccount.
		destinationAccount.deposit(amount);
		
	}

	public void deposit(double amount) {
		if (amount < 0) {
			throw new IllegalArgumentException('Cannot deposit a negative amount');
		}
		this.balance += amount;
	}

	public void withdraw(double amount) {
		if (amount < 0) {
			throw new IllegalArgumentException('Cannot withdraw a negative amount');
		}
		this.balance -= amount;
	}

	public String getOwnerName() {
		return this.ownerName;
	}
	// deducting balance ,As part of fund transfer between accounts
	void deductBalanceFromSourceAccount(decimal amountToDeduct){
		if (this.balance < amountToDeduct) {
            system.debug('Insuffiecient funds to transfer');
			throw new IllegalArgumentException('Insuffiecient funds to transfer');
		}
		this.balance -= amountToDeduct;
	}

	public double getBalance() {
		return this.balance;
	}
}