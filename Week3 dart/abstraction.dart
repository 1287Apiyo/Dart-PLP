// Abstract class: BankAccount
abstract class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  // Abstract method
  void displayAccountDetails();

  // Non-abstract method
  void deposit(double amount) {
    balance += amount;
  }
}

// Concrete class: SavingsAccount
class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountHolder, double balance, this.interestRate)
      : super(accountHolder, balance);

  // Implementing the abstract method
  @override
  void displayAccountDetails() {
    print('Savings Account Holder: $accountHolder');
    print('Balance: \$${balance.toStringAsFixed(2)}');
    print('Interest Rate: ${interestRate * 100}%');
  }
}

// Concrete class: CheckingAccount
class CheckingAccount extends BankAccount {
  double overdraftLimit;

  CheckingAccount(String accountHolder, double balance, this.overdraftLimit)
      : super(accountHolder, balance);

  // Implementing the abstract method
  @override
  void displayAccountDetails() {
    print('Checking Account Holder: $accountHolder');
    print('Balance: \$${balance.toStringAsFixed(2)}');
    print('Overdraft Limit: \$${overdraftLimit.toStringAsFixed(2)}');
  }
}

void main() {
  SavingsAccount savings = SavingsAccount('Anne', 1500, 0.03);
  CheckingAccount checking = CheckingAccount('John', 1000, 300);

  savings.displayAccountDetails();
  print('---');
  checking.displayAccountDetails();
}
