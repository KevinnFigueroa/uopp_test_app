import 'package:flutter/material.dart';
import 'package:uopp_test/ui/extraction/widgets/available_to_extract.dart';
import 'package:uopp_test/ui/recharge/widgets/recharge_tax.dart';
import 'package:uopp_test/ui/recharge/widgets/total_recharge.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class SelectQuantityMovement extends StatelessWidget {
  const SelectQuantityMovement({
    Key? key,
    required this.isRecharge,
  }) : super(key: key);

  final bool isRecharge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.color9,
          border: Border.all(
            color: MyColors.color16,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            const TotalRecharge(),
            const SizedBox(height: 10),
            isRecharge ? const RechargeTax() : const QuantityAvailable(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
