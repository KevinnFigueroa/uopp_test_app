import 'package:flutter/material.dart';
import 'package:uopp_test/ui/bank_details/bank_details.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class InformationListTile extends StatelessWidget {
  const InformationListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, BankDetailsPage.routeName);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: MyColors.color4,
        leading: Image.asset(
          "assets/icons/card_bank_double_icon_list_tile.png",
          width: 38,
          height: 35,
        ),
        trailing: Image.asset(
          "assets/icons/info_circle_gray.png",
          width: 18,
          height: 18,
        ),
        title: const Text(
          "Datos bancarios",
          style: TextStyle(
            color: MyColors.color5,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
