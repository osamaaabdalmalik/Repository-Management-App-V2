import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/expense/data/models/expense_model.dart';

abstract class ExpenseRemoteDataSource {
  Future<List<ExpenseModel>> getExpenses({required int repositoryId});

  Future<List<RegisterModel>> getExpenseRegisters({required int id});

  Future<Unit> createExpense({required ExpenseModel expenseModel});

  Future<Unit> updateExpense({required ExpenseModel expenseModel});

  Future<Unit> deleteExpense({required int id});

  Future<Unit> deleteExpenseRegister({required int id});

  Future<Unit> meetDebtExpense({required int id, required double payment});
}

class ExpenseRemoteDataSourceImpl extends ExpenseRemoteDataSource {
  final ApiService apiService;

  ExpenseRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<ExpenseModel>> getExpenses({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getExpenses` in |ExpenseRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getExpenses,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<ExpenseModel> expenses = mapData['data']
          .map<ExpenseModel>(
            (item) => ExpenseModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getExpenses` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(expenses);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getExpenses` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getExpenseRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getExpenseRegisters` in |ExpenseRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getExpenseRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getExpenseRegisters` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getExpenseRegisters` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  createExpense({required ExpenseModel expenseModel}) async {
    try {
      Get.find<Logger>().i("Start `createExpense` in |ExpenseRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.createExpense,
        data: expenseModel.toJson(),
      );
      Get.find<Logger>().f("End `createExpense` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createExpense` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateExpense({required ExpenseModel expenseModel}) async {
    try {
      Get.find<Logger>().i("Start `updateExpense` in |ExpenseRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.updateExpense,
        data: expenseModel.toJson(),
      );
      Get.find<Logger>().f("End `updateExpense` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateExpense` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteExpense({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteExpense` in |ExpenseRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteExpense,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteExpense` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteExpense` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteExpenseRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteExpenseRegister` in |ExpenseRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteExpenseRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteExpenseRegister` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteExpenseRegister` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> meetDebtExpense({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtExpense` in |ExpenseRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.meetDebtExpense,
        data: {
          'id': id,
          'payment': payment,
        },
      );
      Get.find<Logger>().f("End `meetDebtExpense` in |ExpenseRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `meetDebtExpense` in |ExpenseRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
