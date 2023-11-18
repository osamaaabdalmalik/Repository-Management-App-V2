import 'package:rms/features/client/domain/entities/client_stocktaking_entity.dart';

class ClientStocktakingModel extends ClientStocktaking {
  const ClientStocktakingModel({
    required super.invoicesCount,
    required super.paid,
    required super.debts,
    required super.salesAmount,
    required super.invoicesTotal,
  });

  factory ClientStocktakingModel.fromJson(Map<String, dynamic> json) {
    return ClientStocktakingModel(
      invoicesCount: json['invoices_count'],
      paid: json['paid'],
      debts: json['debts'],
      salesAmount: json['sales_amount'],
      invoicesTotal: json['invoicesTotal'],
    );
  }
}
