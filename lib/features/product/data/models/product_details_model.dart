import 'package:rms/features/product/data/models/purchase_model.dart';
import 'package:rms/features/product/data/models/sale_model.dart';
import 'package:rms/features/product/domain/entities/product_details_entity.dart';

class ProductDetailsModel extends ProductDetails {
  const ProductDetailsModel({
    required super.sales,
    required super.purchases,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel(
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
