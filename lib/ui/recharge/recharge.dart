import 'package:flutter/material.dart';
import 'package:uopp_test/data/mockup/credit_cards_mockup.dart';
import 'package:uopp_test/data/models/credit_card_model.dart';
import 'package:uopp_test/ui/extraction/widgets/available_to_extract.dart';
import 'package:uopp_test/ui/recharge/widgets/recharge_tax.dart';
import 'package:uopp_test/ui/recharge/widgets/select_quantity_movement.dart';
import 'package:uopp_test/ui/recharge/widgets/total_recharge.dart';
import 'package:uopp_test/ui/utils/carrousel_parameters.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/app_bar.dart';
import 'package:uopp_test/ui/widgets/bank_card.dart';
import 'package:uopp_test/ui/widgets/empty_card.dart';
import 'package:uopp_test/ui/widgets/modal_bottom_sheet.dart';
import 'package:uopp_test/ui/widgets/title_header.dart';

class RechargePage extends StatefulWidget {
  static const routeName = "/recharge_page";

  const RechargePage({Key? key}) : super(key: key);

  @override
  _RechargePageState createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> {
  List<CreditCard?> creditCardList = [];

  final PageController _pageController = PageController(
    viewportFraction: viewPortFraction,
  );
  double _currentPage = 0.0;

  @override
  void initState() {
    creditCards.forEach((card) {
      creditCardList.add(CreditCard.fromJson(card));
    });

    creditCardList.add(null);

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
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
        child: Column(
          children: [
            creditCardList.isEmpty
                ? Container()
                : Column(
                    children: [
                      const TitleHeader(header: "Importe a recargar"),
                      const SizedBox(height: 10),
                      const SelectQuantityMovement(isRecharge: true),
                      const TitleHeader(header: "Método de pago"),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                            color: MyColors.color4,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/bank_card_double_color.png",
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Tarjeta bancaria",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: MyColors.color5,
                                    ),
                                  ),
                                ],
                              ),
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
                                    double scale = (_currentPage - index)
                                        .abs()
                                        .clamp(0.0, 1.0);
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
                                        showCheck: true,
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: MaterialButton(
                elevation: 0,
                color: MyColors.color1,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                height: 45,
                onPressed: () {
                  showModalConfirmRecharge(context, "Confirmar recarga");
                },
                child: const Center(
                  child: Text(
                    "Pagar y recargar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MyColors.color9,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      appBar: MyAppBar(title: "Recargar"),
    );
  }
}
