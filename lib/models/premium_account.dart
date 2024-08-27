import 'package:dart_bank/models/account.dart';
import 'package:dart_bank/models/simple_account.dart';

class PremiumAccount extends SimpleAccount implements Account {
  double cashBack;

  PremiumAccount(super.name, super.number, super.balance,
      {this.cashBack = 5.0});
}
