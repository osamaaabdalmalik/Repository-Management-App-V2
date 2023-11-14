import 'package:rms/features/auth/data/models/tokens_model.dart';

class Tokens{
  final String access;
  final String refresh;

  const Tokens({
    required this.access,
    required this.refresh,
  });

  TokensModel toModel() {
    return TokensModel(
      access: access,
      refresh: refresh,
    );
  }
}
