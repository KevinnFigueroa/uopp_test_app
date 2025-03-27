import 'package:flutter/material.dart';

class CreditCard {
  final String logoUrl;
  final List<List<int>> backgroundColors;
  final String cardName;
  final String cardNumber;
  final bool isDefault;

  CreditCard({
    required this.logoUrl,
    required this.backgroundColors,
    required this.cardName,
    required String cardNumber,
    this.isDefault = false,
  }) : cardNumber = _maskCardNumber(cardNumber);

  factory CreditCard.fromJson(Map json) {
    return CreditCard(
      logoUrl: json['logoUrl'],
      backgroundColors: json['backgroundColors'],
      cardName: json['cardName'],
      cardNumber: json['cardNumber'],
      isDefault: json['isDefault'],
    );
  }

  static String _maskCardNumber(String number) {
    if (number.length < 16) return number;
    return '${number.substring(0, 4)} **** **** ${number.substring(12)}';
  }
}
