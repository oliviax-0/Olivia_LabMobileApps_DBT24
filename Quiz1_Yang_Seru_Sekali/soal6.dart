void main() {
  Account account = Account();
  account.data();
}

class Account {
  String? name;
  int? balance;

  void data() {
    name = "Oliv";
    balance = 50000;
    print("Account Holder: $name");
    print("Initial Balance: ${balance}");
    deposit(20000);
    withdraw(100000);
  }

  void withdraw(int amount) {
    if (amount <= balance!) {
      balance = balance! - amount;
      print("Withdrawal of ${amount} successful. New balance: ${balance}");
    } else {
      print(
        "Insufficient balance ${amount}. Current balance: ${balance}",
      );
    }
  }

  void deposit(int amount) {
    balance = balance! + amount;
    print("Deposit of ${amount} successful. New balance: ${balance}");
  }
}
