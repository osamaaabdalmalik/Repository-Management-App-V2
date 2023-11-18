import 'package:rms/features/product/domain/entities/sale_entity.dart';
import 'package:rms/features/sale_invoice/domain/entities/sale_invoice_entity.dart';

class ClientDetails {
  final List<Sale> sales;
  final List<SaleInvoice> saleInvoices;

  const ClientDetails({
    required this.sales,
    required this.saleInvoices,
  });
}
