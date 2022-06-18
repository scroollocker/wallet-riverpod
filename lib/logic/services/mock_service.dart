import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:wallet_riverpod/logic/models/account_model.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/logic/models/deposit_model.dart';

class MockSerice {
  Future<List<CurrencyModel>> loadCurrencies() async {
    var jsonData = await rootBundle.loadString('assets/jsons/currencies.json');
    var json = await jsonDecode(jsonData);

    return json['currencies']
        .map<CurrencyModel>((e) => CurrencyModel.fromJson(e))
        .toList();
  }

  Future<List<AccountModel>> loadAccounts() async {
    var jsonData = await rootBundle.loadString('assets/jsons/accounts.json');
    var json = await jsonDecode(jsonData);
    return json['accounts']
        .map<AccountModel>((e) => AccountModel.fromJson(e))
        .toList();
  }

  Future<DepositModel> loadDeposit(String currency) async {
    var jsonData = await rootBundle.loadString('assets/jsons/$currency.json');
    var json = await jsonDecode(jsonData);
    return DepositModel.fromJson(json['deposit']);
  }
}
