import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class AccountNumber extends StatelessWidget {
  final double paddingValue;

  const AccountNumber({Key? key, this.paddingValue = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Número de cuenta",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: MyColors.color5,
            ),
          ),
          Text(
            "ES5***************285",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: MyColors.color5,
            ),
          ),
        ],
      ),
    );
  }
}
