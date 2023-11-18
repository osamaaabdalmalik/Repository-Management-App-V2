import 'package:rms/features/supplier/domain/entities/supplier_stocktaking_entity.dart';

class SupplierStocktakingModel extends SupplierStocktaking {
  const SupplierStocktakingModel({
    required super.invoicesCount,
    required super.paid,
    required super.debts,
    required super.purchasesAmount,
    required super.invoicesTotal,
  });

  factory SupplierStocktakingModel.fromJson(Map<String, dynamic> json) {
    return SupplierStocktakingModel(
      invoicesCount: json['invoices_count'],
      paid: json['paid'],
      debts: json['debts'],
      purchasesAmount: json['purchases_amount'],
      invoicesTotal: json['invoicesTotal'],
    );
  }
}
