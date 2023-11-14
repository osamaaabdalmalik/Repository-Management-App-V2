import 'package:rms/features/auth/data/models/user_model.dart';

class User {
  final int? id;
  final String firstName;
  final String lastName;
  final String birthday;
  final String phone;
  final String? password;

  const User({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.birthday,
    required this.phone,
    this.password,
  });

  UserModel toModel() {
    return UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      birthday: birthday,
      phone: phone,
      password: password,
    );
  }
}
