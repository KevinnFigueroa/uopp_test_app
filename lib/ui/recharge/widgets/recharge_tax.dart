import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';

class RechargeTax extends StatelessWidget {
  final double paddingValue;

  const RechargeTax({Key? key, this.paddingValue = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tarifa de recarga",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: MyColors.color5,
                ),
              ),
              const SizedBox(width: 3),
              Image.asset(
                "assets/icons/info_circle_gray.png",
                width: 18,
                height: 18,
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyColors.color3,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                  child: Center(
                    child: Text(
                      "1,49€",
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
          )
        ],
      ),
    );
  }
}
