class Sale {
  final int id;
  final double amount;
  final double totalSalePrice;
  final double totalPurchasePrice;
  final int invoiceNumber;
  final int productId;
  final int clientId;
  final String productName;
  final String clientName;
  final int saleInvoiceId;

  const Sale({
    required this.id,
    required this.amount,
    required this.totalSalePrice,
    required this.totalPurchasePrice,
    required this.productName,
    required this.clientName,
    required this.invoiceNumber,
    required this.productId,
    required this.clientId,
    required this.saleInvoiceId,
  });
}
