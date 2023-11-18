import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class MeetDebtExpenseUseCase {
  final ExpenseRepo repo;

  MeetDebtExpenseUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id, required double payment}) async {
    Get.find<Logger>().i("Call MeetDebtExpenseUseCase");
    return await repo.meetDebtExpense(id: id, payment: payment);
  }
}
