import 'package:rms/features/product/data/models/product_model.dart';
import 'package:rms/features/product/domain/entities/product_details_entity.dart';
import 'package:rms/features/product/domain/entities/product_stocktaking_entity.dart';

class Product {
  final int id;
  final String name;
  final double purchasePrice;
  final double salePrice;
  final double amount;
  final String photo;
  final String measuringUnit;
  final int categoryId;
  final String categoryName;
  final ProductDetails details;
  final ProductStocktaking stocktaking;

  const Product({
    required this.id,
    required this.name,
    required this.purchasePrice,
    required this.salePrice,
    required this.amount,
    required this.categoryName,
    required this.categoryId,
    required this.photo,
    required this.measuringUnit,
    required this.details,
    required this.stocktaking,
  });

  ProductModel toModel() {
    return ProductModel(
      id: id,
      name: name,
      purchasePrice: purchasePrice,
      salePrice: salePrice,
      amount: amount,
      categoryName: categoryName,
      categoryId: categoryId,
      photo: photo,
      measuringUnit: measuringUnit,
      details: details,
      stocktaking: stocktaking,
    );
  }
}
