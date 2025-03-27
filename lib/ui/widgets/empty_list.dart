import 'package:flutter/material.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/title_header.dart';

class EmptyList extends StatelessWidget {
  final String assetIconPath;
  final String title;
  final String subtitle;
  final bool backgroundWhite;
  final bool haveBorder;
  final bool haveButton;
  final Function()? onTapButton;
  final String? header;

  const EmptyList({
    Key? key,
    required this.assetIconPath,
    required this.title,
    required this.subtitle,
    this.backgroundWhite = false,
    this.haveBorder = false,
    this.haveButton = false,
    this.onTapButton,
    this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header != null
            ? Column(
                children: [
                  TitleHeader(header: header),
                  const SizedBox(height: 10),
                ],
              )
            : const SizedBox.shrink(),
        Container(
            decoration: BoxDecoration(
              color: backgroundWhite ? MyColors.color9 : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              border: haveBorder
                  ? Border.all(
                      width: 1,
                      color: MyColors.color13.withOpacity(0.2),
                    )
                  : null,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1,
                          vertical: 10),
                      child: Column(
                        children: [
                          Image.asset(
                            assetIconPath,
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: MyColors.color12,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: MyColors.color13,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                  haveButton
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              MaterialButton(
                                elevation: 0,
                                color: MyColors.color2,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 40,
                                onPressed: onTapButton,
                                child: const Center(
                                  child: Text(
                                    "+ Añadir",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: MyColors.color18),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            )),
      ],
    );
  }
}
