import 'package:rms/features/supplier/data/models/supplier_details_model.dart';
import 'package:rms/features/supplier/data/models/supplier_stocktaking_model.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';

class SupplierModel extends Supplier {
  const SupplierModel({
    required super.id,
    required super.name,
    required super.phoneNumber,
    required super.address,
    required super.photo,
    required super.invoicesCount,
    required super.debts,
    required super.invoicesTotal,
    required super.details,
    required super.stocktaking,
  });

  factory SupplierModel.fromJson(Map<String, dynamic> json) {
    return SupplierModel(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      photo: json['photo'] as String,
      invoicesCount: json['invoices_count'] as int,
      debts: json['debts'] as double,
      invoicesTotal: json['invoices_total'] as double,
      details: SupplierDetailsModel.fromJson(json['details']),
      stocktaking: SupplierStocktakingModel.fromJson(json['stocktaking']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone_number': phoneNumber,
      'address': address,
    };
  }
}
