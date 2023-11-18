import 'package:rms/features/product/data/models/purchase_model.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';

class PurchasesInvoiceModel extends PurchasesInvoice {
  const PurchasesInvoiceModel({
    required super.id,
    required super.number,
    required super.totalPrice,
    required super.paid,
    required super.remained,
    required super.date,
    required super.supplierId,
    required super.supplierName,
    required super.moneyOperationId,
    required super.purchases,
  });

  factory PurchasesInvoiceModel.fromJson(Map<String, dynamic> json) {
    return PurchasesInvoiceModel(
      id: json['id'],
      number: json['number'],
      totalPrice: json['total_price'],
      paid: json['paid'],
      remained: json['remained'],
      date: json['date'],
      supplierId: json['client']['id'],
      supplierName: json['client']['name'],
      moneyOperationId: json['money_operation_id'],
      purchases: json['details']['sales']
          .map<PurchaseModel>(
            (item) => PurchaseModel.fromJson(item),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'total_price': totalPrice,
      'paid': paid,
      'remained': remained,
    };
  }
}
