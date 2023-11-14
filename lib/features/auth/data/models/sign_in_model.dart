import 'package:rms/features/auth/domain/entities/sign_in_entity.dart';

class SignInModel extends SignIn {
  const SignInModel({
    required super.phone,
    required super.password,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      phone: json['phone'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
    };
  }
}
