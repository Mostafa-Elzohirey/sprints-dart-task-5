class BankAccount {
  String accountID;
  double balance;

  BankAccount(this.accountID, [this.balance = 0.0]);

  BankAccount.name(this.accountID) : balance = 0.0;

  void withdraw(double amount) {
    if (amount < 0.0) {
      print("error: amount can't be negative");
    } else if (amount > balance) {
      print("error: insufficient funds");
    } else {
      balance -= amount;
      print('$amount withdrawn successfully and current balance is $balance');
    }
  }

  void deposit(double amount) {
    if(amount>0){
      balance += amount;
      print("$amount deposited successfully and current balance is $balance");
    }else{
      print("invalid deposit");
    }
  }

  void displayInfo() {
    print("\naccount ID is $accountID \ncurrent balance is $balance ");
  }
}

main() {
  BankAccount account1 = BankAccount("15");
  BankAccount account2 = BankAccount.name("16");
  account1.deposit(-5000.0);
  account1.deposit(5000.0);
  account1.withdraw(-500.0);
  account1.withdraw(50000.0);
  account1.withdraw(500.0);
  account1.displayInfo();
  account2.displayInfo();
}
