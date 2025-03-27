import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:uopp_test/ui/router.dart';
import 'package:uopp_test/ui/utils/scroll_behavior.dart';
import 'package:uopp_test/ui/wallet/wallet.dart';

void main() {
  runApp(const UoppAppTest());
}

class UoppAppTest extends StatefulWidget {
  const UoppAppTest({Key? key}) : super(key: key);

  @override
  _UoppAppTestState createState() => _UoppAppTestState();
}

class _UoppAppTestState extends State<UoppAppTest> {
  @override
  Widget build(BuildContext context) {
    // Inicializo para el formateo de fechas
    initializeDateFormatting();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "CircularStd"),
      home: ScrollConfiguration(
        behavior: MyBehavior(),
        child: const WalletPage(),
      ),
      routes: UoppTestRouter.routes,
    );
  }
}
