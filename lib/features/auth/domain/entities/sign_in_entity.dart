import 'package:rms/features/auth/data/models/sign_in_model.dart';

class SignIn {
  final String phone;
  final String password;

  const SignIn({required this.phone, required this.password});

  SignInModel toModel() {
    return SignInModel(
      phone: phone,
      password: password,
    );
  }
}
