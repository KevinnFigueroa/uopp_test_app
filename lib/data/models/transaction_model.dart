class TransactionModel {
  String nombreProducto;
  String tipoTransaccion;
  String estado;
  String rutaIcono;
  double monto;
  String? date;

  TransactionModel({
    required this.nombreProducto,
    required this.tipoTransaccion,
    required this.estado,
    required this.rutaIcono,
    required this.monto,
    this.date,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      nombreProducto: json['nombre_producto'],
      tipoTransaccion: json['tipo_transaccion'],
      estado: json['estado'],
      rutaIcono: json['ruta_icono'],
      monto: json['monto'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombre_producto': nombreProducto,
      'tipo_transaccion': tipoTransaccion,
      'estado': estado,
      'ruta_icono': rutaIcono,
      'monto': monto,
    };
  }
}

class TransactionsByDate {
  Map<String, List<TransactionModel>> transactionsByDate;

  TransactionsByDate({required this.transactionsByDate});

  factory TransactionsByDate.fromJson(Map json) {
    Map<String, List<TransactionModel>> transactions = {};

    json.forEach((date, transactionsList) {
      transactions[date] = List<TransactionModel>.from(
        transactionsList.map((x) => TransactionModel.fromJson(x)),
      );
    });

    return TransactionsByDate(transactionsByDate: transactions);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    transactionsByDate.forEach((date, transactionsList) {
      data[date] = transactionsList.map((e) => e.toJson()).toList();
    });

    return data;
  }
}
