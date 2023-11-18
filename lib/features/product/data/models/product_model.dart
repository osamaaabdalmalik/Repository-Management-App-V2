import 'package:rms/features/product/data/models/product_details_model.dart';
import 'package:rms/features/product/data/models/product_stocktaking_model.dart';
import 'package:rms/features/product/domain/entities/product_entity.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.name,
    required super.purchasePrice,
    required super.salePrice,
    required super.amount,
    required super.categoryName,
    required super.categoryId,
    required super.photo,
    required super.measuringUnit,
    required super.details,
    required super.stocktaking,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      purchasePrice: json['purchase_price'] as double,
      salePrice: json['sale_price'] as double,
      amount: json['amount'] as double,
      categoryName: json['category']['name'] as String,
      categoryId: json['category']['id'] as int,
      photo: json['photo'] as String,
      measuringUnit: json['measuring_unit'] as String,
      details: ProductDetailsModel.fromJson(json['details']),
      stocktaking: ProductStocktakingModel.fromJson(json['stocktaking']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'purchase_price': purchasePrice,
      'sale_price': salePrice,
      'category_id': categoryId,
      'measuring_unit': measuringUnit,
    };
  }
}
