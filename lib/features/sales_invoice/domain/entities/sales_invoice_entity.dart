import 'package:rms/features/product/domain/entities/sale_entity.dart';
import 'package:rms/features/sales_invoice/data/models/sales_invoice_model.dart';

class SalesInvoice {
  final int id;
  final int number;
  final double totalPrice;
  final double paid;
  final double remained;
  final String date;
  final int clientId;
  final String clientName;
  final int moneyOperationId;
  final List<Sale> sales;

  const SalesInvoice({
    required this.id,
    required this.number,
    required this.totalPrice,
    required this.paid,
    required this.remained,
    required this.date,
    required this.clientId,
    required this.clientName,
    required this.moneyOperationId,
    required this.sales,
  });

  SalesInvoiceModel toModel() {
    return SalesInvoiceModel(
      id: id,
      number: number,
      totalPrice: totalPrice,
      paid: paid,
      remained: remained,
      date: date,
      clientId: clientId,
      clientName: clientName,
      moneyOperationId: moneyOperationId,
      sales: sales,
    );
  }
}
