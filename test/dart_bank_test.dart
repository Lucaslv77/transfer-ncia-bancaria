import 'package:test/test.dart';
import 'package:dart_bank/models/account.dart';
import 'package:dart_bank/services/tranferencia.dart';

void main() {
  group('Transferência de contas', () {
    late Account contaOrigem;
    late Account contaDestino;

    setUp(() {
      contaOrigem = Account(balance: 1000.0);
      contaDestino = Account(balance: 500.0);
    });

    test('Deve transferir valor corretamente entre contas', () {
      transferenciaService(contaOrigem, contaDestino, 200.0);

      expect(contaOrigem.getBalance(), equals(800.0));
      expect(contaDestino.getBalance(), equals(700.0));
    });

    test('Não deve permitir transferência para a mesma conta', () {
      expect(
          () => transferenciaService(contaOrigem, contaOrigem, 100.0),
          throwsA(isA<ArgumentError>().having((e) => e.message, 'message',
              'Não é possível transferir para a mesma conta.')));
    });

    test('Não deve permitir transferência com valor negativo ou zero', () {
      expect(
          () => transferenciaService(contaOrigem, contaDestino, -100.0),
          throwsA(isA<ArgumentError>().having((e) => e.message, 'message',
              'O valor da transferência deve ser positivo.')));

      expect(
          () => transferenciaService(contaOrigem, contaDestino, 0.0),
          throwsA(isA<ArgumentError>().having((e) => e.message, 'message',
              'O valor da transferência deve ser positivo.')));
    });

    test('Não deve permitir transferência que exceda o saldo disponível', () {
      expect(
          () => transferenciaService(contaOrigem, contaDestino, 1100.0),
          throwsA(isA<ArgumentError>().having((e) => e.message, 'message',
              'Erro: Valor de transferência excede o saldo disponível.')));
    });
  });
}
