import 'package:rms/features/category/data/models/category_details_model.dart';
import 'package:rms/features/category/data/models/category_stocktaking_model.dart';
import 'package:rms/features/category/domain/entities/category_entity.dart';

class CategoryModel extends Category {
  const CategoryModel({
    required super.id,
    required super.name,
    required super.photo,
    required super.productsAmount,
    required super.salesAmount,
    required super.purchasesAmount,
    required super.details,
    required super.stocktaking,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      photo: json['photo'] as String,
      productsAmount: json['products_amount'] as double,
      salesAmount: json['products_amount'] as double,
      purchasesAmount: json['products_amount'] as double,
      details: CategoryDetailsModel.fromJson(json['products_amount']),
      stocktaking: CategoryStocktakingModel.fromJson(json['stocktaking']),
    );
  }
}
