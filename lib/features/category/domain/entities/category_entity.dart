import 'package:rms/features/category/domain/entities/category_details_entity.dart';
import 'package:rms/features/category/domain/entities/category_stocktaking_entity.dart';

class Category {
  final int id;
  final String name;
  final String photo;
  final double productsAmount;
  final double salesAmount;
  final double purchasesAmount;
  final CategoryDetails details;
  final CategoryStocktaking stocktaking;

  const Category({
    required this.id,
    required this.name,
    required this.photo,
    required this.productsAmount,
    required this.salesAmount,
    required this.purchasesAmount,
    required this.details,
    required this.stocktaking,
  });
//
// UserModel toModel() {
//   return UserModel(
//     id: id,
//     firstName: firstName,
//     lastName: lastName,
//     birthday: birthday,
//     phone: phone,
//     password: password,
//   );
// }
}
