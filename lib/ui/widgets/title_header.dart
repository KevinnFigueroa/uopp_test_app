import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
    required this.header,
  }) : super(key: key);

  final String? header;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              header!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: MyColors.color5,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              "assets/icons/info_circle_gray.png",
              width: 18,
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
