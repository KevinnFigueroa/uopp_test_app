import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uopp_test/data/mockup/transactions_mockup.dart';
import 'package:uopp_test/data/models/transaction_model.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/wallet/widgets/balance_card.dart';
import 'package:uopp_test/ui/wallet/widgets/information_list_tile.dart';
import 'package:uopp_test/ui/wallet/widgets/transaction_list_tile.dart';
import 'package:uopp_test/ui/widgets/app_bar.dart';
import 'package:uopp_test/ui/widgets/empty_list.dart';

class WalletPage extends StatefulWidget {
  static const routeName = "/wallet_page";

  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  bool showListTransactions = false;
  Map<String, List<TransactionModel>> transactionsByDate = {};
  List<TransactionModel> pendingTransactions = [];

  @override
  void initState() {
    // Buscamos las transacciones por fecha
    transactionsByDate =
        TransactionsByDate.fromJson(transactionsList).transactionsByDate;

    // Buscamos las transacciones pendientes
    transactionsList.forEach((key, value) {
      value.forEach((element) {
        if (element["estado"] == "Pendiente") {
          TransactionModel model = TransactionModel.fromJson(element);
          model.date = key.toString();
          pendingTransactions.add(model);
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.color19,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BalanceCard(
                pendingTransactions: pendingTransactions,
                onActivateTransactions: () {
                  setState(() {
                    showListTransactions = !showListTransactions;
                  });
                },
              ),
              const SizedBox(height: 10),
              showListTransactions
                  ? Column(
                      children: [
                        for (var transaction in transactionsByDate.entries)
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 15),
                                Text(
                                  DateFormat.yMMMMd('es')
                                      .format(
                                        DateTime.parse(
                                          transaction.key,
                                        ),
                                      )
                                      .toLowerCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: MyColors.color5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyColors.color4,
                                  ),
                                  child: Column(
                                    children: [
                                      for (var item in transaction.value)
                                        TransactionListTile(
                                          product: item.nombreProducto,
                                          type: item.tipoTransaccion,
                                          iconPath: item.rutaIcono,
                                          amount: item.monto,
                                          isLast:
                                              transaction.value.indexOf(item) ==
                                                  transaction.value.indexOf(
                                                    transaction.value.last,
                                                  ),
                                        ),
                                      const SizedBox(height: 15),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        const SizedBox(height: 15),
                      ],
                    )
                  : Column(
                      children: const [
                        SizedBox(height: 10),
                        InformationListTile(),
                        EmptyList(
                          assetIconPath: "assets/icons/no_transactions.png",
                          title: "No hay transacciones",
                          subtitle:
                              "Actualmente no hay transacciones, estas aparecerán cuando compras o vendas",
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
      appBar: MyAppBar(title: "Monedero"),
    );
  }
}
