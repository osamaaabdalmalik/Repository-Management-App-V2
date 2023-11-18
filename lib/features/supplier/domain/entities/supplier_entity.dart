import 'package:rms/features/supplier/data/models/supplier_model.dart';
import 'package:rms/features/supplier/domain/entities/supplier_details_entity.dart';
import 'package:rms/features/supplier/domain/entities/supplier_stocktaking_entity.dart';

class Supplier {
  final int id;
  final String name;
  final String phoneNumber;
  final String address;
  final String photo;
  final int invoicesCount;
  final double debts;
  final double invoicesTotal;
  final SupplierDetails details;
  final SupplierStocktaking stocktaking;

  const Supplier({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.photo,
    required this.invoicesCount,
    required this.debts,
    required this.invoicesTotal,
    required this.details,
    required this.stocktaking,
  });

  SupplierModel toModel() {
    return SupplierModel(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      address: address,
      photo: photo,
      invoicesCount: invoicesCount,
      debts: debts,
      invoicesTotal: invoicesTotal,
      details: details,
      stocktaking: stocktaking,
    );
  }
}
