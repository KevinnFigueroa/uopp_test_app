import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/horizontal_divider.dart';

class PendingTransactionListTile extends StatelessWidget {
  final String product;
  final String type;
  final String iconPath;
  final double amount;
  final String date;
  final bool isLast;

  const PendingTransactionListTile({
    Key? key,
    required this.product,
    required this.type,
    required this.iconPath,
    required this.amount,
    required this.date,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/en_proceso.png",
                width: 25,
                height: 25,
              ),
              const SizedBox(width: 10),
              Container(
                width: 55,
                height: 55,
                decoration: ShapeDecoration(
                  color: MyColors.color17,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    iconPath,
                    width: 38,
                    height: 35,
                  ),
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                amount.toString().contains("-")
                    ? amount.toString()
                    : ("+${amount.toString()}"),
                style: TextStyle(
                  color: double.tryParse(amount.toString())!.isNegative
                      ? MyColors.color7
                      : MyColors.color10,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                DateFormat.yMMMd('es')
                    .format(
                      DateTime.parse(
                        date,
                      ),
                    )
                    .toLowerCase(),
                style: const TextStyle(
                  color: MyColors.color13,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          title: Text(
            product,
            style: const TextStyle(
              color: MyColors.color5,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          subtitle: Text(
            type,
            style: const TextStyle(
              color: MyColors.color13,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        isLast
            ? const SizedBox.shrink()
            : const HorizontalDividerWithinHeight(),
      ],
    );
  }
}
