import 'package:uopp_test/ui/bank_details/bank_details.dart';
import 'package:uopp_test/ui/extraction/extraction.dart';
import 'package:uopp_test/ui/recharge/recharge.dart';
import 'package:uopp_test/ui/wallet/wallet.dart';

class UoppTestRouter {
  static var routes = {
    WalletPage.routeName: (ctx) => const WalletPage(),
    BankDetailsPage.routeName: (ctx) => const BankDetailsPage(),
    RechargePage.routeName: (ctx) => const RechargePage(),
    ExtractionPage.routeName: (ctx) => const ExtractionPage(),
  };
}
