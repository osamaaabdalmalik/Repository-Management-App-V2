import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/supplier/data/models/supplier_model.dart';

abstract class SupplierRemoteDataSource {
  Future<List<SupplierModel>> getSuppliers({required int repositoryId});

  Future<SupplierModel> getSupplier({required int id});

  Future<List<SupplierModel>> getArchivesSuppliers({required int repositoryId});

  Future<SupplierModel> getArchiveSupplier({required int id});

  Future<List<RegisterModel>> getSupplierRegisters({required int id});

  Future<Unit> createSupplier({required SupplierModel supplierModel, File? photo});

  Future<Unit> updateSupplier({required SupplierModel supplierModel, File? photo});

  Future<Unit> deleteSupplier({required int id});

  Future<Unit> deleteSupplierRegister({required int id});

  Future<Unit> meetDebtSupplier({required int id, required double payment});

  Future<Unit> addSupplierToArchive({required int id});

  Future<Unit> removeSupplierFromArchive({required int id});
}

class SupplierRemoteDataSourceImpl extends SupplierRemoteDataSource {
  ApiService apiService;

  SupplierRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<SupplierModel>> getSuppliers({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSuppliers` in |SupplierRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSuppliers,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<SupplierModel> suppliers = mapData['data']
          .map<SupplierModel>(
            (item) => SupplierModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getSuppliers` in |SupplierRemoteDataSourceImpl|");
      return Future.value(suppliers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSuppliers` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<SupplierModel> getSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSupplier` in |SupplierRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSupplier,
        parameters: {'id': id.toString()},
      );
      final SupplierModel supplier = SupplierModel.fromJson(mapData);

      Get.find<Logger>().f("End `getSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(supplier);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<SupplierModel>> getArchivesSuppliers({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getArchivesSuppliers` in |SupplierRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getArchivesSuppliers,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<SupplierModel> suppliers = mapData['data']
          .map<SupplierModel>(
            (item) => SupplierModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getArchivesSuppliers` in |SupplierRemoteDataSourceImpl|");
      return Future.value(suppliers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getArchivesSuppliers` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<SupplierModel> getArchiveSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getArchiveSupplier` in |SupplierRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getArchiveSupplier,
        parameters: {'id': id.toString()},
      );
      final SupplierModel supplier = SupplierModel.fromJson(mapData);

      Get.find<Logger>().f("End `getArchiveSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(supplier);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getArchiveSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getSupplierRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSupplierRegisters` in |SupplierRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSupplierRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getSupplierRegisters` in |SupplierRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSupplierRegisters` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> createSupplier({required SupplierModel supplierModel, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `createSupplier` in |SupplierRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.createSupplier,
        data: supplierModel.toJson(),
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `createSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateSupplier({required SupplierModel supplierModel, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateSupplier` in |SupplierRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.updateSupplier,
        data: supplierModel.toJson(),
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `updateSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSupplier` in |SupplierRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteSupplier,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteSupplierRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSupplierRegister` in |SupplierRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteSupplierRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteSupplierRegister` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteSupplierRegister` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> meetDebtSupplier({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtSupplier` in |SupplierRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteSupplierRegister,
        data: {
          'id': id,
          'payment': payment,
        },
      );
      Get.find<Logger>().f("End `meetDebtSupplier` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `meetDebtSupplier` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> addSupplierToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addSupplierToArchive` in |SupplierRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.addSupplierToArchives,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `addSupplierToArchive` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `addSupplierToArchive` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> removeSupplierFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeSupplierFromArchive` in |SupplierRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.removeSupplierFromArchives,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `removeSupplierFromArchive` in |SupplierRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `removeSupplierFromArchive` in |SupplierRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
