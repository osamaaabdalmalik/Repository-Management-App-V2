import 'package:rms/features/product/domain/entities/purchase_entity.dart';

class PurchaseModel extends Purchase {
  const PurchaseModel({
    required super.id,
    required super.amount,
    required super.totalSalePrice,
    required super.totalPurchasePrice,
    required super.productName,
    required super.invoiceNumber,
    required super.productId,
    required super.supplierId,
    required super.supplierName,
  });

  factory PurchaseModel.fromJson(Map<String, dynamic> json) {
    return PurchaseModel(
      id: json['id'],
      amount: json['amount'],
      totalSalePrice: json['total_sale_price'],
      totalPurchasePrice: json['total_purchase_price'],
      productName: json['product']['name'],
      invoiceNumber: json['purchase_invoice']['number'],
      productId: json['product']['id'],
      supplierId: json['supplier']['id'],
      supplierName: json['supplier']['name'],
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
