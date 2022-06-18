import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/helpers/utilities.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';

class CurrencyItem extends StatelessWidget {
  final CurrencyModel currencyItem;

  const CurrencyItem({Key? key, required this.currencyItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: currencyItem.isDepositEnabled == true
          ? () {
              Utilities.showDepositDialog(context, currencyItem);
            }
          : null,
      child: Container(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.borderColor)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Transform.scale(
                scale: 1.5,
                child: SvgPicture.memory(
                  fit: BoxFit.fill,
                  base64Decode(currencyItem.icon ?? ''),
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                child: Text(
                  '${currencyItem.code} | ${currencyItem.name}',
                  style: Styles.medium(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
            Text(
              currencyItem.balance != null
                  ? '\$${currencyItem.balance?.toStringAsFixed(2)}'
                  : '0.00',
              style: Styles.regular(fontSize: 17, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
