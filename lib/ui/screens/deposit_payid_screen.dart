import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/logic/models/deposit_model.dart';
import 'package:wallet_riverpod/logic/providers/main_providers.dart';
import 'package:wallet_riverpod/ui/widgets/payid_detail.dart';

class DepositPayidScreen extends StatefulWidget {
  final String code;
  const DepositPayidScreen({Key? key, required this.code}) : super(key: key);

  @override
  State<DepositPayidScreen> createState() => _DepositPayidScreenState();
}

class _DepositPayidScreenState extends State<DepositPayidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Deposit - ${widget.code.toUpperCase()}'),
        ),
        body: TabBarData(widget.code));
  }
}

class TabBarData extends HookConsumerWidget {
  final String code;
  const TabBarData(this.code, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<DepositModel> depositData = ref.watch(getDeposits(code));
    return depositData.when(
        data: (deposit) {
          if (deposit.payId == null && deposit.transfer == null) {
            return const Center(
              child: Text('Oops, something went wron. Please try again later'),
            );
          }

          return DefaultTabController(
              length: deposit.payId == null || deposit.transfer == null ? 1 : 2,
              child: Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  deposit.payId == null || deposit.transfer == null
                      ? const SizedBox()
                      : const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TabBar(tabs: [
                            Tab(
                              text: 'PayID / Osko',
                            ),
                            Tab(
                              text: 'Bank transfer',
                            )
                          ]),
                        ),
                  Expanded(
                    child: TabBarView(children: [
                      if (deposit.payId != null)
                        TabContentContainer(content: deposit.payId!),
                      if (deposit.transfer != null)
                        TabContentContainer(content: deposit.transfer!)
                    ]),
                  )
                ],
              ));
        },
        error: (_, __) {
          return const Center(
            child: Text('Oops, something went wron. Please try again later'),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}

class TabContentContainer extends StatelessWidget {
  final TabContent content;
  const TabContentContainer({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          PayidDetail(
            fields: content.fields ?? [],
          ),
          const SizedBox(
            height: 106,
          ),
          Container(
            height: 4,
            color: AppColors.borderColor,
            width: double.infinity,
          ),
          Important(
            text: content.important ?? '',
          ),
        ],
      ),
    );
  }
}

class Important extends StatelessWidget {
  final String text;
  const Important({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 26.0),
            child: Text(
              'Important:',
              style: Styles.medium(fontSize: 17, color: Colors.white),
            ),
          ),
          Text(
            text,
            style: Styles.regular(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
