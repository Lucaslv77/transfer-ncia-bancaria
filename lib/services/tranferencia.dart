import 'package:dart_bank/models/account.dart';

void transferenciaService(Account origin, Account destinatario, double value) {
  if (origin == destinatario) {
    throw ArgumentError('Não foi possivel a transferencia');
  }
  if (value <= 0) {
    throw ArgumentError('Saldo Insuficiente');
  }
  if (value > origin.getBalance()) {
    throw ArgumentError('Erro: Valor de tranferencia excede o saldo');
  }
  origin.removeBalance(value);
  destinatario.aadBalance(value);
}
