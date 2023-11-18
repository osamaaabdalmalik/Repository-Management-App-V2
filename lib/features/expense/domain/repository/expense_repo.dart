import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/expense/domain/entities/expense.dart';

abstract class ExpenseRepo {
  Future<Either<Failure, List<Expense>>> getExpenses({required int repositoryId});

  Future<Either<Failure, List<Register>>> getExpenseRegisters({required int id});

  Future<Either<Failure, Unit>> createExpense({required Expense expense});

  Future<Either<Failure, Unit>> updateExpense({required Expense expense});

  Future<Either<Failure, Unit>> deleteExpense({required int id});

  Future<Either<Failure, Unit>> deleteExpenseRegister({required int id});

  Future<Either<Failure, Unit>> meetDebtExpense({required int id, required double payment});
}
