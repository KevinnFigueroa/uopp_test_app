import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class TotalRecharge extends StatelessWidget {
  const TotalRecharge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: MyColors.color4,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "00.0",
              style: TextStyle(
                color: MyColors.color22,
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 2),
            Text(
              "€",
              style: TextStyle(
                color: MyColors.color1,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
