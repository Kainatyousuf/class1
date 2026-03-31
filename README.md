//` Abstraction: BankAccount is an abstract class that defines the common properties and methods for all types of bank accounts. It has an abstract method withdraw() that must be implemented by any subclass.
abstract class BankAccount {
  String name; //account holder's name
  double _balance; // private variable to hold the balance
  //canstractor
  BankAccount(this.name, this._balance);
  //method
  void withdraw(double amount);
  void deposit(double amount) {
    _balance += amount;
    print("$amount deposited in $name Account");
  }

  double get balance => _balance; //getter for balance + prvt variable
}

// inheritance
class SavingAccount extends BankAccount {
  SavingAccount(String name, double balance) : super(name, balance);

  // polymorphism
  @override
  void withdraw(double amount) {
    if (amount > balance) {
      _balance -= amount;
      print("saving withdrawn from $amount Account");
    } else {
      print("Insufficient funds in $amount Account");
    }
  }
}

class CurrentAccount extends BankAccount {
  CurrentAccount(String name, double balance) : super(name, balance);
  @override
  void withdraw(double amount) {
    _balance -= amount; //directly withdraw without checking balance
    print("current withdrawn from $amount  (overdeaft Acllow)");
  }
}

void main() {
  BankAccount user1 = CurrentAccount("Kainat", 30000);
  BankAccount user2 = SavingAccount("Ayesha", 50000);
  //oprations
  user1.deposit(5000);
  user1.withdraw(10000);
  user2.deposit(10000);
  user2.withdraw(60000);
  print("Balance: ${user1.balance}");
  print('================================');
  print("Balance: ${user2.balance}");
}
