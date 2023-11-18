import 'package:rms/features/money_box/domain/entities/money_box_operation.dart';

class MoneyBoxOperationModel extends MoneyBoxOperation {
  const MoneyBoxOperationModel({
    required super.id,
    required super.totalPrice,
    required super.typeMoney,
    required super.isFinished,
    required super.invoiceNumber,
    required super.date,
  });

  factory MoneyBoxOperationModel.fromJson(Map<String, dynamic> json) {
    return MoneyBoxOperationModel(
      id: json['id'] as int,
      totalPrice: json['total_price'] as double,
      typeMoney: json['type_money'] as String,
      isFinished: json['is_finished'] as bool,
      invoiceNumber: json['invoice_number'] as int,
      date: json['date'] as String,
    );
  }
}
