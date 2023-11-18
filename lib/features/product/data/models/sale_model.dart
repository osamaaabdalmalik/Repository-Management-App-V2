import 'package:rms/features/product/domain/entities/sale_entity.dart';

class SaleModel extends Sale {
  const SaleModel({
    required super.id,
    required super.amount,
    required super.totalSalePrice,
    required super.totalPurchasePrice,
    required super.productName,
    required super.clientName,
    required super.invoiceNumber,
    required super.productId,
    required super.clientId,
    required super.saleInvoiceId,
  });

  factory SaleModel.fromJson(Map<String, dynamic> json) {
    return SaleModel(
      id: json['id'],
      amount: json['amount'],
      totalSalePrice: json['total_sale_price'],
      totalPurchasePrice: json['total_purchase_price'],
      productName: json['product']['name'],
      clientName: json['client']['name'],
      invoiceNumber: json['sale_invoice']['number'],
      productId: json['product']['id'],
      clientId: json['client']['id'],
      saleInvoiceId: json['sale_invoice']['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'amount': amount,
      'total_sale_price': totalSalePrice,
      'total_purchase_price': totalPurchasePrice,
    };
  }
}
