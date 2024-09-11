class BankAccount {
  // Private variables (using _ to indicate they are private)
  String _accountHolder;
  double _balance;

  // Constructor to initialize account
  BankAccount(this._accountHolder, this._balance);

  // Public method to access private balance (getter)
  double getBalance() {
    return _balance;
  }

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Public method to withdraw money (controlled access)
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient funds.");
    }
  }
}

void main() {
  // Creating a BankAccount object
  BankAccount account = BankAccount('Anne Apiyo', 1000);

  // Accessing balance via getter
  print('Initial Balance: \$${account.getBalance()}');

  // Depositing money
  account.deposit(500);
  print('Balance after deposit: \$${account.getBalance()}');

  // Trying to withdraw money
  account.withdraw(200);
  print('Balance after withdrawal: \$${account.getBalance()}');
}
