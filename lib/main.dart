import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_riverpod/helpers/colors.dart';
import 'package:wallet_riverpod/helpers/styles.dart';
import 'package:wallet_riverpod/ui/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet APP',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          tabBarTheme: TabBarTheme(
            indicator: BoxDecoration(
                color: AppColors.tabBarIndicator,
                borderRadius: BorderRadius.circular(5)),
            labelStyle: Styles.medium(fontSize: 17),
            unselectedLabelStyle: Styles.regular(fontSize: 17),
          ),
          appBarTheme: AppBarTheme(
              elevation: 0,
              color: AppColors.background,
              iconTheme: const IconThemeData(color: Colors.white)),
          scaffoldBackgroundColor: AppColors.background),
      home: const MainScreen(),
    );
  }
}
