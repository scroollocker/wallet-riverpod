import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/logic/services/mock_service.dart';

final currencyRepository = Provider.autoDispose<CurrencyRepository>(
    (ref) => MockCurrencyRepository(MockSerice()));

abstract class CurrencyRepository {
  Future<List<CurrencyModel>> loadCurrencies();
}

class MockCurrencyRepository implements CurrencyRepository {
  final MockSerice _mockSerice;

  MockCurrencyRepository(this._mockSerice);

  @override
  Future<List<CurrencyModel>> loadCurrencies() => _mockSerice.loadCurrencies();
}
