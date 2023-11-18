import 'package:rms/features/category/domain/entities/category_stocktaking_entity.dart';
// TODO move to stocktaking
class CategoryStocktakingModel extends CategoryStocktaking {
  const CategoryStocktakingModel({
    required super.salesAmount,
    required super.salesTotalPrice,
    required super.purchasesAmount,
    required super.purchaseTotalPrice,
    required super.profit,
    required super.expectedProfit,
  });

  factory CategoryStocktakingModel.fromJson(Map<String, dynamic> json) {
    return CategoryStocktakingModel(
      salesAmount: json['sales_amount'],
      salesTotalPrice: json['sales_total_price'],
      purchasesAmount: json['purchases_amount'],
      purchaseTotalPrice: json['purchases_total_price'],
      profit: json['profits'],
      expectedProfit: json['expected_profits'],
    );
  }
}
