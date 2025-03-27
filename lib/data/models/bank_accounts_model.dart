class BankAccount {
  final String logoUrl;
  final List<List<int>> backgroundColors;
  final String cardName;
  final String cardNumber;
  final bool isDefault;

  BankAccount({
    required this.logoUrl,
    required this.backgroundColors,
    required this.cardName,
    required this.cardNumber,
    this.isDefault = false,
  });

  factory BankAccount.fromJson(Map json) {
    return BankAccount(
      logoUrl: json['logoUrl'],
      backgroundColors: json['backgroundColors'],
      cardName: json['cardName'],
      cardNumber: json['cardNumber'],
      isDefault: json['isDefault'],
    );
  }
}
