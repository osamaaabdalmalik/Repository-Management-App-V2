import 'package:rms/features/expense/data/models/expense_model.dart';

class Expense {
  final int id;
  final String name;
  final String details;
  final double totalPrice;
  final double paid;
  final double remainder;
  final String date;

  const Expense({
    required this.id,
    required this.name,
    required this.details,
    required this.totalPrice,
    required this.paid,
    required this.remainder,
    required this.date,
  });

  ExpenseModel toModel() {
    return ExpenseModel(
      id: id,
      name: name,
      details: details,
      totalPrice: totalPrice,
      paid: paid,
      remainder: remainder,
      date: date,
    );
  }
}
