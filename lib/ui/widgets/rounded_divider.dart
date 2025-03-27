import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class RoundedDivider extends StatelessWidget {
  const RoundedDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: const BoxDecoration(
        color: MyColors.color16,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
    );
  }
}
