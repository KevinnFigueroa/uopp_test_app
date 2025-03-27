import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class QuantityAvailable extends StatelessWidget {
  const QuantityAvailable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: MyColors.color2,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
            child: Center(
              child: Text(
                "Disponible 150,00 EUR",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: MyColors.color21,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
