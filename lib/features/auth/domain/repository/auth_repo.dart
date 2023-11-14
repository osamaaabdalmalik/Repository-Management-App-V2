import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/entities/sign_in_entity.dart';
import 'package:rms/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, User>> signIn(SignIn signIn);

  Either<Failure, User?> getUser();

  Future<Either<Failure, Unit>> setUser(User user);

  Future<Either<Failure, Unit>> setPrimitiveData(String key, dynamic value);

  Either<Failure, T?> getPrimitiveData<T>(String key);
}
