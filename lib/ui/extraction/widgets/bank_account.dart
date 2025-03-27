import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class BankAccount extends StatelessWidget {
  final double paddingValue;

  const BankAccount({Key? key, this.paddingValue = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Cuenta Bancaria",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: MyColors.color5,
            ),
          ),
          Text(
            "5135 **** **** **85",
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
