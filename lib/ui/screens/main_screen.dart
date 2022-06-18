import 'package:flutter/material.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/logic/models/currency_model.dart';
import 'package:wallet_riverpod/logic/providers/main_providers.dart';

import 'package:wallet_riverpod/ui/widgets/currency_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Wallet',
            style: Styles.bold(color: Colors.white, fontSize: 30),
          ),
          const Expanded(
            child: CurrencyList(),
          )
        ]),
      ),
    );
  }
}

class CurrencyList extends HookConsumerWidget {
  const CurrencyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<CurrencyModel>> currencies =
        ref.watch(getAllCurrencies);

    return RefreshIndicator(
      onRefresh: () async => ref.refresh(getAllCurrencies),
      child: currencies.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                padding: const EdgeInsets.only(top: 9.0),
                itemBuilder: (context, index) {
                  return Builder(builder: (context) {
                    return CurrencyItem(
                      currencyItem: data[index],
                    );
                  });
                });
          },
          error: (_, __) {
            return Center(
              child: Text(
                'Oops, something went wront, try again later',
                style: Styles.regular(color: Colors.white),
              ),
            );
          },
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
