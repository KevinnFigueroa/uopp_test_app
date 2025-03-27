import 'package:flutter/material.dart';
import 'package:uopp_test/data/models/transaction_model.dart';
import 'package:uopp_test/ui/extraction/extraction.dart';
import 'package:uopp_test/ui/recharge/recharge.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/wallet/widgets/pending_transaction_list_tile.dart';
import 'package:uopp_test/ui/widgets/horizontal_divider.dart';
import 'dart:math' as math;

import 'package:uopp_test/ui/widgets/rounded_divider.dart';

class BalanceCard extends StatefulWidget {
  final Function() onActivateTransactions;
  final List<TransactionModel> pendingTransactions;

  const BalanceCard({
    Key? key,
    required this.onActivateTransactions,
    required this.pendingTransactions,
  }) : super(key: key);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool transactionsActive = false;
  bool isPendingTransactionsExpanded = false;

  onActivate() {
    setState(() {
      transactionsActive = !transactionsActive;
    });

    widget.onActivateTransactions();
  }

  onExpandedPendingTransactions() {
    setState(() {
      isPendingTransactionsExpanded = !isPendingTransactionsExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  MyColors.linearGradientAppBar2,
                  MyColors.linearGradientAppBar1,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Saldo total",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color9.withOpacity(0.7)),
                      ),
                      Image.asset(
                        "assets/icons/bank_card_double.png",
                        height: 24,
                        width: 24,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "0,00€",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: MyColors.color9,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Saldo disponible ",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "CircularStd",
                                fontWeight: FontWeight.w500,
                                color: MyColors.color9.withOpacity(0.7),
                              ),
                            ),
                            const TextSpan(
                              text: "0,00€",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "CircularStd",
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.3,
                                color: MyColors.color9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/icons/info_circle.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      children: [
                        const SizedBox(width: 7),
                        GestureDetector(
                          onTap: () {
                            if (transactionsActive) {
                              Navigator.pushNamed(
                                context,
                                RechargePage.routeName,
                              );
                            }
                          },
                          child: Opacity(
                            opacity: transactionsActive ? 1 : 0.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/icons/agregar.png",
                                  width: 52,
                                  height: 52,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Agregar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: MyColors.color9.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            if (transactionsActive) {
                              Navigator.pushNamed(
                                context,
                                ExtractionPage.routeName,
                              );
                            }
                          },
                          child: Opacity(
                            opacity: transactionsActive ? 1 : 0.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/icons/retirar.png",
                                  width: 52,
                                  height: 52,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Retirar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: MyColors.color9.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Opacity(
                          opacity: 0.5,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/icons/pagar.png",
                                width: 52,
                                height: 52,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Pagar",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: MyColors.color9.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Opacity(
                          opacity: 0.5,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/icons/cobrar.png",
                                width: 52,
                                height: 52,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Cobrar",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: MyColors.color9.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 7),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
        transactionsActive
            ? Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: InkWell(
                    onTap: onExpandedPendingTransactions,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                              right: 10,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Pendientes",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.color5,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Image.asset(
                                          "assets/icons/info_circle_gray.png",
                                          width: 15,
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      "Transacciones en proceso",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: MyColors.color6,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Text(
                                      "+90,36",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: MyColors.color10,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Transform.rotate(
                                        angle: math.pi / 2,
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: MyColors.color15,
                                          size: 20,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          !isPendingTransactionsExpanded
                              ? const RoundedDivider()
                              : const HorizontalDivider(),
                          isPendingTransactionsExpanded
                              ? Column(
                                  children: [
                                    for (var item in widget.pendingTransactions)
                                      PendingTransactionListTile(
                                        product: item.nombreProducto,
                                        type: item.tipoTransaccion,
                                        iconPath: item.rutaIcono,
                                        amount: item.monto,
                                        date: item.date ?? "",
                                        isLast: widget.pendingTransactions
                                                .indexOf(item) ==
                                            widget.pendingTransactions.indexOf(
                                              widget.pendingTransactions.last,
                                            ),
                                      ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                          isPendingTransactionsExpanded
                              ? const RoundedDivider()
                              : const SizedBox.shrink(),
                          !isPendingTransactionsExpanded
                              ? const SizedBox(height: 10)
                              : const SizedBox.shrink(),
                          isPendingTransactionsExpanded
                              ? const SizedBox(height: 10)
                              : const SizedBox.shrink()
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: MyColors.color14,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ))
            : InkWell(
                onTap: onActivate,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: MyColors.color2,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Activar monedero",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: MyColors.color8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
