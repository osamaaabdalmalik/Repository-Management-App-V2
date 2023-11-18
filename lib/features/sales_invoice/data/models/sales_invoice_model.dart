import 'package:rms/features/product/data/models/sale_model.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';

class SalesInvoiceModel extends SalesInvoice {
  const SalesInvoiceModel({
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

  factory SalesInvoiceModel.fromJson(Map<String, dynamic> json) {
    return SalesInvoiceModel(
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
