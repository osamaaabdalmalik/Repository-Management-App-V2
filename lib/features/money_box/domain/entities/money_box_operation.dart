class MoneyBoxOperation {
  final int id;
  final double totalPrice;
  final String typeMoney;
  final bool isFinished;
  final int invoiceNumber;
  final String date;

  const MoneyBoxOperation({
    required this.id,
    required this.totalPrice,
    required this.typeMoney,
    required this.isFinished,
    required this.invoiceNumber,
    required this.date,
  });
}
