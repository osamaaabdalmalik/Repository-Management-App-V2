import 'package:rms/features/client/data/models/client_model.dart';
import 'package:rms/features/client/domain/entities/client_details_entity.dart';
import 'package:rms/features/client/domain/entities/client_stocktaking_entity.dart';

class Client {
  final int id;
  final String name;
  final String phoneNumber;
  final String address;
  final String photo;
  final int invoicesCount;
  final double debts;
  final double invoicesTotal;
  final ClientDetails details;
  final ClientStocktaking stocktaking;

  const Client({
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

  ClientModel toModel() {
    return ClientModel(
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
