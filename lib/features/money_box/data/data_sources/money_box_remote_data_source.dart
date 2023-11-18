import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/money_box/data/models/money_box_operation_model.dart';

abstract class MoneyBoxRemoteDataSource {
  Future<double> getTotalMoneyBox();

  Future<List<MoneyBoxOperationModel>> getMoneyBoxOperations({required int repositoryId});

  Future<List<RegisterModel>> getMoneyBoxOperationRegisters({required int id});

  Future<Unit> createMoneyBoxOperation({
    required double totalPrice,
    required String date,
  });

  Future<Unit> updateMoneyBoxOperation({
    required int id,
    required String date,
    required double totalPrice,
  });

  Future<Unit> deleteMoneyBoxOperation({required int id});

  Future<Unit> deleteMoneyBoxOperationRegister({required int id});
}

class MoneyBoxRemoteDataSourceImpl extends MoneyBoxRemoteDataSource {
  final ApiService apiService;

  MoneyBoxRemoteDataSourceImpl({required this.apiService});

  @override
  Future<double> getTotalMoneyBox() async {
    try {
      Get.find<Logger>().i("Start `getTotalMoneyBox` in |MoneyBoxRemoteDataSource|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getTotalMoneyBox,
      );

      Get.find<Logger>().f("End `getTotalMoneyBox` in |MoneyBoxRemoteDataSource|");
      return Future.value(mapData['date']);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getTotalMoneyBox` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<MoneyBoxOperationModel>> getMoneyBoxOperations({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getMoneyBoxOperations` in |MoneyBoxRemoteDataSource|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getMoneyBoxOperations,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<MoneyBoxOperationModel> operations = mapData['data']
          .map<MoneyBoxOperationModel>(
            (item) => MoneyBoxOperationModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getMoneyBoxOperations` in |MoneyBoxRemoteDataSource|");
      return Future.value(operations);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getMoneyBoxOperations` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getMoneyBoxOperationRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getMoneyBoxOperationRegisters` in |MoneyBoxRemoteDataSource|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getMoneyBoxOperationRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getMoneyBoxOperationRegisters` in |MoneyBoxRemoteDataSource|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getMoneyBoxOperationRegisters` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  createMoneyBoxOperation({
    required double totalPrice,
    required String date,
  }) async {
    try {
      Get.find<Logger>().i("Start `createMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      await apiService.post(
        subUrl: AppApiRoutes.createMoneyBoxOperation,
        data: {
          'total_price': totalPrice,
          'date': date,
        },
      );
      Get.find<Logger>().f("End `createMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createMoneyBoxOperation` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateMoneyBoxOperation({
    required int id,
    required String date,
    required double totalPrice,
  }) async {
    try {
      Get.find<Logger>().i("Start `updateMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      await apiService.post(
        subUrl: AppApiRoutes.updateMoneyBoxOperation,
        data: {
          'id': id,
          'total_price': totalPrice,
          'date': date,
        },
      );
      Get.find<Logger>().f("End `updateMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateMoneyBoxOperation` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteMoneyBoxOperation({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteMoneyBoxOperation,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteMoneyBoxOperation` in |MoneyBoxRemoteDataSource|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteMoneyBoxOperation` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteMoneyBoxOperationRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteMoneyBoxOperationRegister` in |MoneyBoxRemoteDataSource|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteMoneyBoxOperationRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteMoneyBoxOperationRegister` in |MoneyBoxRemoteDataSource|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteMoneyBoxOperationRegister` in |MoneyBoxRemoteDataSource| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
