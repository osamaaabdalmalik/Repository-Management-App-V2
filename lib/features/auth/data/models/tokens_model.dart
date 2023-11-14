import 'package:rms/features/auth/domain/entities/tokens_entity.dart';

class TokensModel extends Tokens {
  const TokensModel({
    required super.access,
    required super.refresh,
  });

  factory TokensModel.fromJson(Map<String, dynamic> json) {
    return TokensModel(
      access: json['token'] as String,
      refresh: json['refreshToken'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': access,
      'refreshToken': refresh,
    };
  }
}
