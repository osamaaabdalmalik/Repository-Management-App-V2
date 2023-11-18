import 'package:rms/features/product/domain/entities/purchase_entity.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';

class SupplierDetails {
  final List<Purchase> purchases;
  final List<PurchasesInvoice> purchasesInvoices;

  const SupplierDetails({
    required this.purchases,
    required this.purchasesInvoices,
  });
}
