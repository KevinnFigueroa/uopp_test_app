import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class HolderName extends StatelessWidget {
  final double paddingValue;

  const HolderName({Key? key, this.paddingValue = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Nombre del titular",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: MyColors.color5,
            ),
          ),
          Text(
            "José Pérez Martin",
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
