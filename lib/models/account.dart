import 'package:dart_bank/anums/account_type.dart';

abstract class Account {
  double getBalance();

  void aadBalance(double value);

  void removeBalance(double value);
  String getInfo();
  AccountType getType();
  double getCastBack();
}
