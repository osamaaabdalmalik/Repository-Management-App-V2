import 'package:rms/features/product/domain/entities/product_entity.dart';
import 'package:rms/features/product/domain/entities/purchase_entity.dart';
import 'package:rms/features/product/domain/entities/sale_entity.dart';

class CategoryDetails {
  final List<Product> products;
  final List<Sale> sales;
  final List<Purchase> purchases;

  const CategoryDetails({
    required this.products,
    required this.sales,
    required this.purchases,
  });
}
