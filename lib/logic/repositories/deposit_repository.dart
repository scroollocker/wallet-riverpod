import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_riverpod/logic/models/deposit_model.dart';
import 'package:wallet_riverpod/logic/services/mock_service.dart';

final depositRepository = Provider.autoDispose<DepositRepository>(
    (ref) => MockDepositRepository(MockSerice()));

abstract class DepositRepository {
  Future<DepositModel> loadDeposit(String code);
}

class MockDepositRepository implements DepositRepository {
  final MockSerice _mockSerice;

  MockDepositRepository(this._mockSerice);

  @override
  Future<DepositModel> loadDeposit(String code) =>
      _mockSerice.loadDeposit(code);
}
