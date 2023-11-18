import 'package:rms/features/client/data/models/client_details_model.dart';
import 'package:rms/features/client/data/models/client_stocktaking_model.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';

class ClientModel extends Client {
  const ClientModel({
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

  factory ClientModel.fromJson(Map<String, dynamic> json) {
    return ClientModel(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      photo: json['photo'] as String,
      invoicesCount: json['invoices_count'] as int,
      debts: json['debts'] as double,
      invoicesTotal: json['invoices_total'] as double,
      details: ClientDetailsModel.fromJson(json['details']),
      stocktaking: ClientStocktakingModel.fromJson(json['stocktaking']),
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
