import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class HorizontalDivider extends StatelessWidget {
  final double paddingValue;

  const HorizontalDivider({
    Key? key,
    this.paddingValue = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: Divider(
        color: MyColors.color16,
      ),
    );
  }
}

class HorizontalDividerWithinHeight extends StatelessWidget {
  const HorizontalDividerWithinHeight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        height: 0,
        color: MyColors.color16,
      ),
    );
  }
}
