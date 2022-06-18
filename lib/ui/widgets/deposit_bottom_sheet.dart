import 'package:flutter/material.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/helpers/utilities.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/ui/screens/deposit_payid_screen.dart';

class DepositBottomSheet extends StatelessWidget {
  final CurrencyModel currencyModel;
  const DepositBottomSheet({Key? key, required this.currencyModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 32, bottom: 36),
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                    color: AppColors.modalLine,
                    borderRadius: BorderRadius.circular(100)),
              ),
              TextButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      Utilities.route(
                          context,
                          DepositPayidScreen(
                            code: currencyModel.code ?? '',
                          ))),
                  child: Text(
                    'Deposit',
                    style: Styles.regular(color: Colors.white, fontSize: 17),
                  )),
              const SizedBox(
                height: 43,
              ),
              Container(
                height: 4,
                color: AppColors.background,
              ),
              const SizedBox(
                height: 28,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: Styles.regular(color: Colors.white, fontSize: 17),
                  )),
              const SizedBox(
                height: 39,
              ),
            ],
          )),
    );
  }
}
