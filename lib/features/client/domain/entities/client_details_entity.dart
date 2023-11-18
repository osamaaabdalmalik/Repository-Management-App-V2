import 'package:rms/features/product/domain/entities/sale_entity.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';

class ClientDetails {
  final List<Sale> sales;
  final List<SalesInvoice> saleInvoices;

  const ClientDetails({
    required this.sales,
    required this.saleInvoices,
  });
}
