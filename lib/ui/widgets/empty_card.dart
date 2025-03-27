import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

getEmptyCard() {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 15,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(15),
        color: MyColors.color1,
        strokeWidth: 1,
        child: Container(
          width: 345,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/añadir_card.png",
                  width: 26,
                  height: 26,
                ),
                const SizedBox(height: 10),
                Text(
                  "Añadir nueva Tarjeta",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: MyColors.color1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
