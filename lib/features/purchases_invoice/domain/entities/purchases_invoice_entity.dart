import 'package:rms/features/product/domain/entities/purchase_entity.dart';
import 'package:rms/features/purchases_invoice/data/models/purchases_invoice_model.dart';

class PurchasesInvoice {
  final int id;
  final int number;
  final double totalPrice;
  final double paid;
  final double remained;
  final String date;
  final int supplierId;
  final String supplierName;
  final int moneyOperationId;
  final List<Purchase> purchases;

  const PurchasesInvoice({
    required this.id,
    required this.number,
    required this.totalPrice,
    required this.paid,
    required this.remained,
    required this.date,
    required this.supplierId,
    required this.supplierName,
    required this.moneyOperationId,
    required this.purchases,
  });

  PurchasesInvoiceModel toModel() {
    return PurchasesInvoiceModel(
      id: id,
      number: number,
      totalPrice: totalPrice,
      paid: paid,
      remained: remained,
      date: date,
      supplierId: supplierId,
      supplierName: supplierName,
      moneyOperationId: moneyOperationId,
      purchases: purchases,
    );
  }
}
