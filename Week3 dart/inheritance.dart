// Superclass: BankAccount
class BankAccount {
  String _accountHolder;
  double _balance;

  BankAccount(this._accountHolder, this._balance);

  double getBalance() => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient balance.");
    }
  }
}

// Subclass: SavingsAccount inherits BankAccount
class SavingsAccount extends BankAccount {
  double _interestRate;

  // Constructor that passes parameters to the superclass constructor
  SavingsAccount(String accountHolder, double balance, this._interestRate)
      : super(accountHolder, balance);

  // Method to calculate interest
  void addInterest() {
    double interest = getBalance() * _interestRate;
    deposit(interest);
    print('Interest of \$${interest.toStringAsFixed(2)} added.');
  }
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount('Anne', 2000, 0.05);

  print('Balance before interest: \$${savingsAccount.getBalance()}');
  savingsAccount.addInterest();
  print('Balance after interest: \$${savingsAccount.getBalance()}');
}
