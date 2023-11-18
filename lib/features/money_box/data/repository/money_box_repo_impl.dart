import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/money_box/data/data_sources/money_box_remote_data_source.dart';
import 'package:rms/features/money_box/domain/entities/money_box_operation.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class MoneyBoxRepoImpl implements MoneyBoxRepo {
  final MoneyBoxRemoteDataSource moneyBoxRemoteDataSource;

  const MoneyBoxRepoImpl({required this.moneyBoxRemoteDataSource});

  @override
  Future<Either<Failure, double>> getTotalMoneyBox() async {
    try {
      Get.find<Logger>().i("Start `getTotalMoneyBox` in |MoneyBoxRepoImpl|");
      var total = await moneyBoxRemoteDataSource.getTotalMoneyBox();
      Get.find<Logger>().f("End `getTotalMoneyBox` in |MoneyBoxRepoImpl|");
      return Right(total);
    } catch (e) {
      Get.find<Logger>().e("End `getTotalMoneyBox` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<MoneyBoxOperation>>> getMoneyBoxOperations({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getMoneyBoxOperations` in |MoneyBoxRepoImpl|");
      var moneyBoxOperationsModels = await moneyBoxRemoteDataSource.getMoneyBoxOperations(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getMoneyBoxOperations` in |MoneyBoxRepoImpl|");
      return Right(moneyBoxOperationsModels);
    } catch (e) {
      Get.find<Logger>().e("End `getMoneyBoxOperations` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getMoneyBoxOperationRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getMoneyBoxOperationRegisters` in |MoneyBoxRepoImpl|");
      var moneyBoxOperationRegistersModels = await moneyBoxRemoteDataSource.getMoneyBoxOperationRegisters(id: id);
      Get.find<Logger>().f("End `getMoneyBoxOperationRegisters` in |MoneyBoxRepoImpl|");
      return Right(moneyBoxOperationRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getMoneyBoxOperationRegisters` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createMoneyBoxOperation({
    required double totalPrice,
    required String date,
  }) async {
    try {
      Get.find<Logger>().i("Start `createMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      await moneyBoxRemoteDataSource.createMoneyBoxOperation(
        totalPrice: totalPrice,
        date: date,
      );
      Get.find<Logger>().f("End `createMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `createMoneyBoxOperation` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateMoneyBoxOperation({
    required int id,
    required String date,
    required double totalPrice,
  }) async {
    try {
      Get.find<Logger>().i("Start `updateMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      await moneyBoxRemoteDataSource.updateMoneyBoxOperation(
        id: id,
        totalPrice: totalPrice,
        date: date,
      );
      Get.find<Logger>().f("End `updateMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateMoneyBoxOperation` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteMoneyBoxOperation({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      await moneyBoxRemoteDataSource.deleteMoneyBoxOperation(id: id);
      Get.find<Logger>().f("End `deleteMoneyBoxOperation` in |MoneyBoxRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteMoneyBoxOperation` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteMoneyBoxOperationRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteMoneyBoxOperationRegister` in |MoneyBoxRepoImpl|");
      await moneyBoxRemoteDataSource.deleteMoneyBoxOperationRegister(id: id);
      Get.find<Logger>().f("End `deleteMoneyBoxOperationRegister` in |MoneyBoxRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteMoneyBoxOperationRegister` in |MoneyBoxRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
