import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/expense/data/data_sources/expense_remote_data_source.dart';
import 'package:rms/features/expense/domain/entities/expense.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class ExpenseRepoImpl implements ExpenseRepo {
  final ExpenseRemoteDataSource expenseRemoteDataSource;

  const ExpenseRepoImpl({required this.expenseRemoteDataSource});

  @override
  Future<Either<Failure, List<Expense>>> getExpenses({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getExpenses` in |ExpenseRepoImpl|");
      var expenseModels = await expenseRemoteDataSource.getExpenses(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getExpenses` in |ExpenseRepoImpl|");
      return Right(expenseModels);
    } catch (e) {
      Get.find<Logger>().e("End `getExpenses` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getExpenseRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getExpenseRegisters` in |ExpenseRepoImpl|");
      var expenseRegistersModels = await expenseRemoteDataSource.getExpenseRegisters(id: id);
      Get.find<Logger>().f("End `getExpenseRegisters` in |ExpenseRepoImpl|");
      return Right(expenseRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getExpenseRegisters` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createExpense({required Expense expense}) async {
    try {
      Get.find<Logger>().i("Start `createExpense` in |ExpenseRepoImpl|");
      await expenseRemoteDataSource.createExpense(expenseModel: expense.toModel());
      Get.find<Logger>().f("End `createExpense` in |ExpenseRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `createExpense` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateExpense({required Expense expense}) async {
    try {
      Get.find<Logger>().i("Start `updateExpense` in |ExpenseRepoImpl|");
      await expenseRemoteDataSource.updateExpense(expenseModel: expense.toModel());
      Get.find<Logger>().f("End `updateExpense` in |ExpenseRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateExpense` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExpense({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteExpense` in |ExpenseRepoImpl|");
      await expenseRemoteDataSource.deleteExpense(id: id);
      Get.find<Logger>().f("End `deleteExpense` in |ExpenseRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteExpense` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExpenseRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteExpenseRegister` in |ExpenseRepoImpl|");
      await expenseRemoteDataSource.deleteExpenseRegister(id: id);
      Get.find<Logger>().f("End `deleteExpenseRegister` in |ExpenseRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteExpenseRegister` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> meetDebtExpense({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtExpense` in |ExpenseRepoImpl|");
      await expenseRemoteDataSource.meetDebtExpense(id: id, payment: payment);
      Get.find<Logger>().f("End `meetDebtExpense` in |ExpenseRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `meetDebtExpense` in |ExpenseRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
