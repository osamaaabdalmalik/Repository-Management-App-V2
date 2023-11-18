class Purchase {
  final int id;
  final double amount;
  final int productId;
  final int supplierId;
  final int invoiceNumber;
  final String productName;
  final String supplierName;
  final double totalSalePrice;
  final double totalPurchasePrice;

  const Purchase({
    required this.id,
    required this.productId,
    required this.invoiceNumber,
    required this.productName,
    required this.supplierName,
    required this.supplierId,
    required this.amount,
    required this.totalSalePrice,
    required this.totalPurchasePrice,
  });
}
