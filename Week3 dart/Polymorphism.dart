class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  // Method to display account details
  void displayAccountDetails() {
    print('Account Holder: $accountHolder');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountHolder, double balance, this.interestRate)
      : super(accountHolder, balance);

  // Overriding the displayAccountDetails method
  @override
  void displayAccountDetails() {
    super.displayAccountDetails();
    print('Interest Rate: ${interestRate * 100}%');
  }
}

class CheckingAccount extends BankAccount {
  double overdraftLimit;

  CheckingAccount(String accountHolder, double balance, this.overdraftLimit)
      : super(accountHolder, balance);

  // Overriding the displayAccountDetails method
  @override
  void displayAccountDetails() {
    super.displayAccountDetails();
    print('Overdraft Limit: \$${overdraftLimit.toStringAsFixed(2)}');
  }
}

void main() {
  SavingsAccount savings = SavingsAccount('Anne Apiyo', 1500, 0.04);
  CheckingAccount checking = CheckingAccount('John Doe', 1000, 500);

  print('Savings Account Details:');
  savings.displayAccountDetails();

  print('\nChecking Account Details:');
  checking.displayAccountDetails();
}
