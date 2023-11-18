import 'package:rms/features/product/data/models/sale_model.dart';
import 'package:rms/features/sale_invoice/domain/entities/sale_invoice_entity.dart';

class SaleInvoiceModel extends SaleInvoice {
  const SaleInvoiceModel({
    required super.id,
    required super.number,
    required super.totalPrice,
    required super.paid,
    required super.remained,
    required super.date,
    required super.clientId,
    required super.clientName,
    required super.moneyOperationId,
    required super.sales,
  });

  factory SaleInvoiceModel.fromJson(Map<String, dynamic> json) {
    return SaleInvoiceModel(
      id: json['id'],
      number: json['number'],
      totalPrice: json['total_price'],
      paid: json['paid'],
      remained: json['remained'],
      date: json['date'],
      clientId: json['client']['id'],
      clientName: json['client']['name'],
      moneyOperationId: json['money_operation_id'],
      sales: json['details']['sales']
          .map<SaleModel>(
            (item) => SaleModel.fromJson(item),
          )
          .toList(),
    );
  }
}
