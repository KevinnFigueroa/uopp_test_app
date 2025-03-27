import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uopp_test/data/mockup/bank_accounts_mockup.dart';
import 'package:uopp_test/data/mockup/credit_cards_mockup.dart';
import 'package:uopp_test/data/models/bank_accounts_model.dart';
import 'package:uopp_test/data/models/credit_card_model.dart';
import 'package:uopp_test/data/models/transaction_model.dart';
import 'package:uopp_test/ui/utils/carrousel_parameters.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/app_bar.dart';
import 'package:uopp_test/ui/widgets/bank_card.dart';
import 'package:uopp_test/ui/widgets/empty_card.dart';
import 'package:uopp_test/ui/widgets/empty_list.dart';
import 'package:uopp_test/ui/widgets/modal_bottom_sheet.dart';
import 'package:uopp_test/ui/widgets/title_header.dart';

class BankDetailsPage extends StatefulWidget {
  static const routeName = "/bank_details_page";

  const BankDetailsPage({Key? key}) : super(key: key);

  @override
  _BankDetailsPageState createState() => _BankDetailsPageState();
}

class _BankDetailsPageState extends State<BankDetailsPage> {
  List<CreditCard?> creditCardList = [];
  List<BankAccount?> bankAccountList = [];

  final PageController _pageController = PageController(
    viewportFraction: viewPortFraction,
  );
  double _currentPage = 0.0;

  final PageController _pageController2 = PageController(
    viewportFraction: viewPortFraction,
  );
  double _currentPage2 = 0.0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });

    _pageController2.addListener(() {
      setState(() {
        _currentPage2 = _pageController2.page!;
      });
    });

    super.initState();
  }

  addCard() {
    creditCards.forEach((card) {
      creditCardList.add(CreditCard.fromJson(card));
    });

    bankAccounts.forEach((account) {
      bankAccountList.add(BankAccount.fromJson(account));
    });

    creditCardList.add(null);
    bankAccountList.add(null);

    setState(() {});
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
              creditCardList.isEmpty
                  ? EmptyList(
                      assetIconPath:
                          "assets/icons/card_bank_double_icon_list_tile.png",
                      title: "No hay tarjetas bancarias",
                      subtitle:
                          "Añade una o varias tarjetas bancarias para tus compras",
                      haveButton: true,
                      onTapButton: (() {
                        showModal(context, "Agregar tarjeta", () {
                          addCard();
                          Navigator.pop(context);
                        });
                      }),
                      backgroundWhite: true,
                      haveBorder: true,
                      header: "Tarjetas Bancaria",
                    )
                  : Column(
                      children: [
                        TitleHeader(header: "Tarjetas Bancaria"),
                        const SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 145,
                          child: PageView.builder(
                            padEnds: false,
                            controller: _pageController,
                            itemCount: creditCardList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              double scale =
                                  (_currentPage - index).abs().clamp(0.0, 1.0);
                              double sizeFactor = 1 - (scale * 0.2);

                              // Significa que es el ultimo item de la lista y tenemos que mostrar card para agregar
                              if (creditCardList[index] == null) {
                                return Transform.scale(
                                  scale: sizeFactor,
                                  child: getEmptyCard(),
                                );
                              }

                              return Transform.scale(
                                scale: sizeFactor,
                                child: ShowCard(
                                  index: index,
                                  cardList: creditCardList,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
              bankAccountList.isEmpty
                  ? EmptyList(
                      assetIconPath: "assets/icons/no_bank_account.png",
                      title: "No hay tarjetas bancarias",
                      subtitle:
                          "Añade una o varias cuentas bancarias para tus retiros",
                      haveButton: true,
                      onTapButton: (() {}),
                      backgroundWhite: true,
                      haveBorder: false,
                      header: "Cuenta Bancaria",
                    )
                  : Column(
                      children: [
                        TitleHeader(header: "Cuenta bancaria"),
                        const SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 145,
                          child: PageView.builder(
                            padEnds: false,
                            controller: _pageController2,
                            itemCount: bankAccountList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              double scale =
                                  (_currentPage2 - index).abs().clamp(0.0, 1.0);
                              double sizeFactor = 1 - (scale * 0.2);

                              // Significa que es el ultimo item de la lista y tenemos que mostrar card para agregar
                              if (bankAccountList[index] == null) {
                                return Transform.scale(
                                  scale: sizeFactor,
                                  child: getEmptyCard(),
                                );
                              }

                              return Transform.scale(
                                scale: sizeFactor,
                                child: ShowCard(
                                  index: index,
                                  cardList: bankAccountList,
                                  isBankAccount: true,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      appBar: MyAppBar(title: "Datos Bancarios"),
    );
  }
}
