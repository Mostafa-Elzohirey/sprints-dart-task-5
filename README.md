# dart task 5
Create a BankAccount class to withdraw or deposit amount of money

## class
created the class and declared two variables:
accountID of type string
balance of type double
```dart
  String accountID;
  double balance;
```
created two constructors
first is for the name id and an optional parameter balance with default value of zero
second a named constructor that accepts only ID and initializes the balance with 0
```dart
  BankAccount(this.accountID, [this.balance = 0.0]);
  BankAccount.name(this.accountID) : balance = 0.0;
```

## methods
made 3 methods (withdraw, deposit, and displayInfo)
the withdraw method accepts an amount of type double and checks if its a negative number or the balance is not sufficient prints the error otherwise the operation is successful
```dart
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
```
the deposit method also accepts an amount of type double and checks if the number is negative prints an error else the operation is successful and the amount is add to the balance
```dart
  void deposit(double amount) {
    if(amount>0){
      balance += amount;
      print("$amount deposited successfully and current balance is $balance");
    }else{
      print("invalid deposit");
    }
  }
```
and finally the display info method accepts no parameters and displays the account id and current balance
```dart
  void displayInfo() {
    print("\naccount ID is $accountID \ncurrent balance is $balance ");
  }
```
## main
in the main function 
two instances of the bank account class are created
one with the default constructor and the other with the named constructor
```dart
  BankAccount account1 = BankAccount("15");
  BankAccount account2 = BankAccount.name("16");
```
then tested the deposit method with twice
once with a negative number which should output an error
once with a positive number which should output operation success
```dart
  account1.deposit(-5000.0);
  account1.deposit(5000.0);
```

then tested the withdraw method three times
once with a negative number which should output an error
once with a number that is more than the balance which should output an error
and once with a suitable number which should output operation success

```dart
  account1.withdraw(-500.0);
  account1.withdraw(50000.0);
  account1.withdraw(500.0);
```
and last displayed info of both accounts
```dart
  account1.displayInfo();
  account2.displayInfo();
```