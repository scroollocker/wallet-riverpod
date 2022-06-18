import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_riverpod/logic/models/account_model.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/logic/repositories/account_repository.dart';
import 'package:wallet_riverpod/logic/repositories/currency_repository.dart';
import 'package:wallet_riverpod/logic/repositories/deposit_repository.dart';

final getAllAccounts = FutureProvider((ref) async {
  List<AccountModel> accounts =
      await ref.read(accountRepository).loadAccounts();

  return accounts;
});

final getDeposits = FutureProvider.family((ref, String code) async {
  await Future.delayed(const Duration(seconds: 2));
  return await ref.read(depositRepository).loadDeposit(code);
});

final getAllCurrencies = FutureProvider((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  List<AccountModel> accounts = await ref.watch(getAllAccounts.future);

  List<CurrencyModel> currencies =
      await ref.read(currencyRepository).loadCurrencies();

  Map<String, dynamic> mapOfAccounts = {};
  for (AccountModel model in accounts) {
    if (model.currencyCode == null) continue;
    mapOfAccounts[model.currencyCode!] = model.balance;
  }

  return currencies
      .map((e) => e.copyWith(balance: mapOfAccounts[e.code]))
      .toList();
});
