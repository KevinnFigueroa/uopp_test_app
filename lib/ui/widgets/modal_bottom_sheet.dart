import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uopp_test/ui/bank_details/bank_details.dart';
import 'package:uopp_test/ui/extraction/widgets/account_number.dart';
import 'package:uopp_test/ui/extraction/widgets/bank_account.dart';
import 'package:uopp_test/ui/extraction/widgets/holder_name.dart';
import 'package:uopp_test/ui/recharge/widgets/recharge_tax.dart';
import 'package:uopp_test/ui/utils/colors.dart';
import 'package:uopp_test/ui/widgets/bank_card.dart';
import 'package:uopp_test/ui/widgets/horizontal_divider.dart';
import 'package:uopp_test/ui/widgets/rounded_divider.dart';

showModal(BuildContext context, String title, Function() onPressedSave) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    enableDrag: true,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.48,
        ),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Scaffold(
          backgroundColor: MyColors.color19,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RoundedDivider(),
              const SizedBox(height: 15),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: MyColors.color5,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  fillColor: MyColors.color9,
                  filled: true,
                  prefixIcon: SizedBox(
                    width: 18,
                    height: 18,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "assets/icons/search.png",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: MyColors.color16,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: MyColors.color16,
                      width: 1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10.0,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: MyColors.color16,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: MyColors.color9,
                        filled: true,
                        prefixIcon: SizedBox(
                          width: 18,
                          height: 18,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              "assets/icons/search.png",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: MyColors.color9,
                        filled: true,
                        prefixIcon: SizedBox(
                          width: 18,
                          height: 18,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              "assets/icons/search.png",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.color16,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: MyColors.color4,
                  leading: Image.asset(
                    "assets/icons/custom_shape_icon.png",
                    width: 20,
                    height: 20,
                  ),
                  trailing: Image.asset(
                    "assets/icons/info_circle_gray.png",
                    width: 18,
                    height: 18,
                  ),
                  title: Text(
                    "Usar como predeterminada",
                    style: TextStyle(
                      color: MyColors.color5,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              MaterialButton(
                elevation: 0,
                color: MyColors.color1,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 45,
                onPressed: onPressedSave,
                child: const Center(
                  child: Text(
                    "Guardar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MyColors.color9,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

showModalMore(
  BuildContext context,
  Function() onPressedDelete,
  Function() onPressedSetDefault,
  List cardList,
  int index,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    enableDrag: true,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.48,
        ),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Scaffold(
          backgroundColor: MyColors.color19,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RoundedDivider(),
              const SizedBox(height: 15),
              ShowCardWithoutOptions(cardList: cardList, index: index),
              const Spacer(),
              MaterialButton(
                elevation: 0,
                color: MyColors.color1,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 45,
                onPressed: onPressedSetDefault,
                child: const Center(
                  child: Text(
                    "Usar como predeterminada",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: MyColors.color9,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              MaterialButton(
                elevation: 0,
                color: Colors.transparent,
                height: 45,
                onPressed: onPressedDelete,
                child: const Center(
                  child: Text(
                    "Eliminar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: MyColors.color7,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
    },
  );
}

showModalDelete(
  BuildContext context,
  Function() onPressedDelete,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    enableDrag: true,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.26,
        ),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Scaffold(
          backgroundColor: MyColors.color19,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RoundedDivider(),
              const SizedBox(height: 15),
              Text(
                "¿Eliminar método de pago?",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: MyColors.color5,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Se eliminará de forma permanente esta tarjeta de tu cuenta.",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: MyColors.color13,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color4,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: onPressedDelete,
                      child: const Center(
                        child: Text(
                          "Confirmar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
    },
  );
}

showConfirmDelete(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.color20,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.65,
            height: MediaQuery.of(context).size.width * 0.65,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/delete.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Tarjeta eliminada",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: MyColors.color9),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Puedes añadir una nueva cuando lo necesites.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: MyColors.color9.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      });
}

showModalConfirmRecharge(
  BuildContext context,
  String title,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    enableDrag: true,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.48,
        ),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Scaffold(
          backgroundColor: MyColors.color19,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RoundedDivider(),
              const SizedBox(height: 15),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: MyColors.color5,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.color9,
                  border: Border.all(
                    color: MyColors.color16,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        "Importe que recibirás",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: MyColors.color5,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text(
                            "10,0",
                            style: TextStyle(
                              color: MyColors.color5,
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
                      const HorizontalDivider(paddingValue: 0),
                      const SizedBox(height: 5),
                      const RechargeTax(paddingValue: 0),
                      const SizedBox(height: 10),
                      const BankAccount(paddingValue: 0),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color4,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          "Confirmar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
    },
  );
}

showModalConfirmExtraction(
  BuildContext context,
  String title,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    enableDrag: true,
    builder: (context) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.48,
        ),
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Scaffold(
          backgroundColor: MyColors.color19,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const RoundedDivider(),
              const SizedBox(height: 15),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: MyColors.color5,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.color9,
                  border: Border.all(
                    color: MyColors.color16,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        "Importe que recibirás",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: MyColors.color5,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text(
                            "10,0",
                            style: TextStyle(
                              color: MyColors.color5,
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
                      const HorizontalDivider(paddingValue: 0),
                      const SizedBox(height: 5),
                      const HolderName(paddingValue: 0),
                      const SizedBox(height: 10),
                      const AccountNumber(paddingValue: 0),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color4,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: MaterialButton(
                      elevation: 0,
                      color: MyColors.color2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          "Confirmar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MyColors.color8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
    },
  );
}
