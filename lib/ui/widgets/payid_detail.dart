import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/logic/models/deposit_model.dart';

class PayidDetail extends HookWidget {
  final List<FieldData> fields;
  const PayidDetail({Key? key, required this.fields}) : super(key: key);

  Future<void> _copyToClipboard(
      BuildContext context, String value, IsMounted isMounted) async {
    await Clipboard.setData(ClipboardData(text: value));

    if (!isMounted()) return;
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data succeful copied to clipboard')));
  }

  @override
  Widget build(BuildContext context) {
    final isMounted = useIsMounted();
    TableRow _renderRow({required String title, required String value}) =>
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              title,
              style: Styles.bold(fontSize: 14, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Text(
                    value,
                    style: Styles.regular(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.zero,
                    onPressed: () =>
                        _copyToClipboard(context, value, isMounted),
                    icon: Image.asset('assets/imgs/copy_icon.png')),
                const Spacer()
              ],
            ),
          ),
        ]);

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppColors.darkBlue, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20)
            .copyWith(right: 0, bottom: 0),
        child: Table(
          columnWidths: const {0: FractionColumnWidth(0.38)},
          children: fields
              .map((e) => _renderRow(title: e.key ?? '', value: e.value ?? ''))
              .toList(),
        ));
  }
}
