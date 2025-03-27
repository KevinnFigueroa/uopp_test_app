import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/modal_bottom_sheet.dart';

class ShowCard extends StatelessWidget {
  final int index;
  final bool isBankAccount;
  final bool showCheck;

  const ShowCard({
    Key? key,
    required this.cardList,
    required this.index,
    this.isBankAccount = false,
    this.showCheck = false,
  }) : super(key: key);

  final List cardList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      margin: const EdgeInsets.only(
        left: 15,
        right: 5,
      ),
      decoration: BoxDecoration(
        border: isBankAccount ? Border.all(color: MyColors.color16) : null,
        gradient: LinearGradient(
          colors: [
            for (List colors in cardList[index]!.backgroundColors)
              Color.fromRGBO(
                colors[0],
                colors[1],
                colors[2],
                1,
              )
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  cardList[index]!.logoUrl,
                  height: 27,
                  width: 35,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: MyColors.color9,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 4),
                        child: Center(
                          child: Text(
                            "Predeterminada",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: MyColors.color12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    showCheck
                        ? Image.asset(
                            "assets/icons/check.png",
                            width: 18,
                            height: 18,
                          )
                        : InkWell(
                            onTap: () {
                              if (!isBankAccount) {
                                showModalMore(context, () {
                                  Navigator.pop(context);

                                  showModalDelete(
                                    context,
                                    () {
                                      Navigator.pop(context);

                                      showConfirmDelete(context);
                                    },
                                  );
                                }, () {}, cardList, index);
                              }
                            },
                            child: Image.asset(
                              "assets/icons/more.png",
                              width: 15,
                              height: 15,
                            ),
                          )
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardList[index]!.cardNumber,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: isBankAccount ? 14 : 18,
                    color: isBankAccount ? MyColors.color13 : MyColors.color9,
                  ),
                ),
                Text(
                  cardList[index]!.cardName.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: isBankAccount ? 14 : 18,
                    color: isBankAccount ? MyColors.color13 : MyColors.color9,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ShowCardWithoutOptions extends StatelessWidget {
  final int index;
  const ShowCardWithoutOptions({
    Key? key,
    required this.cardList,
    required this.index,
  }) : super(key: key);

  final List cardList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            for (List colors in cardList[index]!.backgroundColors)
              Color.fromRGBO(
                colors[0],
                colors[1],
                colors[2],
                1,
              )
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  cardList[index]!.logoUrl,
                  height: 27,
                  width: 35,
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardList[index]!.cardNumber,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: MyColors.color9,
                  ),
                ),
                Text(
                  cardList[index]!.cardName.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: MyColors.color9,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
