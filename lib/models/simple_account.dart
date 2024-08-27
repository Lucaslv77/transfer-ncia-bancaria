import 'package:dart_bank/models/account.dart';

class SimpleAccount implements Account {
  String name;
  int number;
  double balance;

  SimpleAccount(this.name, this.number, this.balance);

  @override
  void aadBalance(double value) {
    balance = balance += value;
  }

  @override
  double getBalance() {
    return balance;
  }

  @override
  double getCastBack() {
    // TODO: implement getCastBack
    throw UnimplementedError();
  }

  @override
  String getInfo() {
    // TODO: implement getInfo
    throw UnimplementedError();
  }

  @override
  getType() {
    // TODO: implement getType
    throw UnimplementedError();
  }

  @override
  void removeBalance(double value) {
    // TODO: implement removeBalance
  }
}
