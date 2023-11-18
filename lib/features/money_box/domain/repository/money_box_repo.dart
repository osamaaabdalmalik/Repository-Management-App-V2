import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/money_box/domain/entities/money_box_operation.dart';

abstract class MoneyBoxRepo {
  Future<Either<Failure, double>> getTotalMoneyBox();

  Future<Either<Failure, List<MoneyBoxOperation>>> getMoneyBoxOperations({required int repositoryId});

  Future<Either<Failure, List<Register>>> getMoneyBoxOperationRegisters({required int id});

  Future<Either<Failure, Unit>> createMoneyBoxOperation({
    required double totalPrice,
    required String date,
  });

  Future<Either<Failure, Unit>> updateMoneyBoxOperation({
    required int id,
    required String date,
    required double totalPrice,
  });

  Future<Either<Failure, Unit>> deleteMoneyBoxOperation({required int id});

  Future<Either<Failure, Unit>> deleteMoneyBoxOperationRegister({required int id});
}
