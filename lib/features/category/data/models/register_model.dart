import 'package:rms/features/category/domain/entities/register_entity.dart';

class RegisterModel extends Register {
  const RegisterModel({
    required super.id,
    required super.name,
    required super.date,
    required super.userName,
    required super.typeOperation,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      id: json['id'] as int,
      name: json['name'] as String,
      date: json['date'] as String,
      userName: json['user_name'] as String,
      typeOperation: json['type_operation'] as String,
    );
  }
}
