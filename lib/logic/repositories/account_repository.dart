import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_riverpod/logic/models/account_model.dart';
import 'package:wallet_riverpod/logic/services/mock_service.dart';

final accountRepository = Provider.autoDispose<AccountRepository>(
    (ref) => MockAccountRepository(MockSerice()));

abstract class AccountRepository {
  Future<List<AccountModel>> loadAccounts();
}

class MockAccountRepository implements AccountRepository {
  final MockSerice _mockSerice;

  MockAccountRepository(this._mockSerice);

  @override
  Future<List<AccountModel>> loadAccounts() => _mockSerice.loadAccounts();
}
