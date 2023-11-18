import 'package:rms/features/product/data/models/purchase_model.dart';
import 'package:rms/features/purchases_invoice/data/models/purchases_invoice_model.dart';
import 'package:rms/features/supplier/domain/entities/supplier_details_entity.dart';

class SupplierDetailsModel extends SupplierDetails {
  const SupplierDetailsModel({
    required super.purchases,
    required super.purchasesInvoices,
  });

  factory SupplierDetailsModel.fromJson(Map<String, dynamic> json) {
    return SupplierDetailsModel(
      purchases: json['sales']
          .map<PurchaseModel>(
            (item) => PurchaseModel.fromJson(item),
          )
          .toList(),
      purchasesInvoices: json['purchases_invoices']
          .map<PurchasesInvoiceModel>(
            (item) => PurchasesInvoiceModel.fromJson(item),
          )
          .toList(),
    );
  }
}
