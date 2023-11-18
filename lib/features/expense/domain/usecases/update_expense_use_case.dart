import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/expense/domain/entities/expense.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class UpdateExpenseUseCase {
  final ExpenseRepo repo;

  UpdateExpenseUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required Expense expense}) async {
    Get.find<Logger>().i("Call UpdateExpenseUseCase");
    return await repo.updateExpense(expense: expense);
  }
}
