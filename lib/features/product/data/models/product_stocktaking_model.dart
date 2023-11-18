import 'package:rms/features/product/domain/entities/product_stocktaking_entity.dart';

// TODO move to stocktaking
class ProductStocktakingModel extends ProductStocktaking {
  const ProductStocktakingModel({
    required super.salesAmount,
    required super.salesTotalPrice,
    required super.purchasesAmount,
    required super.purchaseTotalPrice,
    required super.profit,
    required super.expectedProfit,
  });

  factory ProductStocktakingModel.fromJson(Map<String, dynamic> json) {
    return ProductStocktakingModel(
      salesAmount: json['sales_amount'],
      salesTotalPrice: json['sales_total_price'],
      purchasesAmount: json['purchases_amount'],
      purchaseTotalPrice: json['purchases_total_price'],
      profit: json['profits'],
      expectedProfit: json['expected_profits'],
    );
  }
}
