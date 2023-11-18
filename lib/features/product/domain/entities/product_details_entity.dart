import 'package:rms/features/product/domain/entities/purchase_entity.dart';
import 'package:rms/features/product/domain/entities/sale_entity.dart';

class ProductDetails {
  final List<Sale> sales;
  final List<Purchase> purchases;

  const ProductDetails({
    required this.sales,
    required this.purchases,
  });
}
