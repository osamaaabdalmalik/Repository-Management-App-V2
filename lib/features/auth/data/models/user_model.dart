import 'package:rms/features/auth/domain/entities/user_entity.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.birthday,
    required super.phone,
    required super.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int?,
      firstName: json['f_name'] as String,
      lastName: json['l_name'] as String,
      birthday: json['birthday'] as String,
      phone: json['phone'] as String,
      password: null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'f_name': firstName,
      'l_name': lastName,
      'birthday': birthday,
      'phone': phone,
      'password': password,
    };
  }
}
