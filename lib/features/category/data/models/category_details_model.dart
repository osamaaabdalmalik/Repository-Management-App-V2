import 'package:rms/features/category/domain/entities/category_details_entity.dart';
import 'package:rms/features/product/data/models/product_model.dart';
import 'package:rms/features/product/data/models/purchase_model.dart';
import 'package:rms/features/product/data/models/sale_model.dart';

class CategoryDetailsModel extends CategoryDetails {
  const CategoryDetailsModel({
    required super.products,
    required super.sales,
    required super.purchases,
  });

  factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) {
    return CategoryDetailsModel(
      products: json['products']
          .map<ProductModel>(
            (item) => ProductModel.fromJson(item),
          )
          .toList(),
      sales: json['sales']
          .map<SaleModel>(
            (item) => SaleModel.fromJson(item),
          )
          .toList(),
      purchases: json['purchases']
          .map<PurchaseModel>(
            (item) => PurchaseModel.fromJson(item),
          )
          .toList(),
    );
  }
}
