import 'package:rms/features/expense/domain/entities/expense.dart';

class ExpenseModel extends Expense {
  const ExpenseModel({
    required super.id,
    required super.name,
    required super.details,
    required super.totalPrice,
    required super.paid,
    required super.remainder,
    required super.date,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      id: json['id'] as int,
      name: json['name'] as String,
      details: json['details'] as String,
      totalPrice: json['total_price'] as double,
      paid: json['paid'] as double,
      remainder: json['remainder'] as double,
      date: json['date'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'details': details,
      'total_price': totalPrice,
      'paid': paid,
      'remainder': remainder,
    };
  }
}
