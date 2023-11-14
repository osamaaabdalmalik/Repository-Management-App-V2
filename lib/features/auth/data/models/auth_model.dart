import 'package:rms/features/auth/data/models/tokens_model.dart';
import 'package:rms/features/auth/data/models/user_model.dart';

class AuthModel {
  UserModel userModel;
  TokensModel tokensModel;

  AuthModel({
    required this.userModel,
    required this.tokensModel,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      userModel: UserModel.fromJson(json["user"]),
      tokensModel: TokensModel.fromJson(json["tokens"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': userModel.toJson(),
      'tokens': tokensModel.toJson(),
    };
  }
}
