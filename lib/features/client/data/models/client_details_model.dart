import 'package:rms/features/client/domain/entities/client_details_entity.dart';
import 'package:rms/features/product/data/models/sale_model.dart';
import 'package:rms/features/sales_invoice/data/models/sales_invoice_model.dart';

class ClientDetailsModel extends ClientDetails {
  const ClientDetailsModel({
    required super.sales,
    required super.saleInvoices,
  });

  factory ClientDetailsModel.fromJson(Map<String, dynamic> json) {
    return ClientDetailsModel(
      sales: json['sales']
          .map<SaleModel>(
            (item) => SaleModel.fromJson(item),
          )
          .toList(),
      saleInvoices: json['sales_invoices']
          .map<SalesInvoiceModel>(
            (item) => SalesInvoiceModel.fromJson(item),
          )
          .toList(),
    );
  }
}
