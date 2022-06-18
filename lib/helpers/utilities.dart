import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/ui/widgets/deposit_bottom_sheet.dart';

class Utilities {
  static Future<void> showDepositDialog(
      BuildContext context, CurrencyModel model) async {
    return showCupertinoModalBottomSheet(
        barrierColor: AppColors.barrier,
        context: context,
        builder: (context) => DepositBottomSheet(
              currencyModel: model,
            ));
  }

  static Route route(BuildContext context, Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
