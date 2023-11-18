import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/category_model.dart';
import 'package:rms/features/category/data/models/register_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategories({required int repositoryId});

  Future<CategoryModel> getCategory({required int id});

  Future<Unit> updateCategory({
    required int id,
    required String name,
    File? photo,
  });

  Future<Unit> deleteCategory({required int id});

  Future<List<RegisterModel>> getCategoryRegisters({required int id});

  Future<Unit> deleteCategoryRegister({required int id});
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  ApiService apiService;

  CategoryRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<CategoryModel>> getCategories({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getCategories` in |CategoryRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getCategories,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<CategoryModel> categories = mapData['data']
          .map<CategoryModel>(
            (item) => CategoryModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getCategories` in |CategoryRemoteDataSourceImpl|");
      return Future.value(categories);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getCategories` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<CategoryModel> getCategory({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getCategory` in |CategoryRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getCategory,
        parameters: {'id': id.toString()},
      );
      final CategoryModel category = CategoryModel.fromJson(mapData);

      Get.find<Logger>().f("End `getCategory` in |CategoryRemoteDataSourceImpl|");
      return Future.value(category);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getCategory` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateCategory({
    required int id,
    required String name,
    File? photo,
  }) async {
    try {
      Get.find<Logger>().i("Start `updateCategory` in |CategoryRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.updateCategory,
        data: {
          'id': id,
          'name': name,
        },
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `updateCategory` in |CategoryRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateCategory` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteCategory({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteCategory` in |CategoryRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteCategory,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteCategory` in |CategoryRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteCategory` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getCategoryRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getCategoryRegisters` in |CategoryRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getCategoryRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getCategoryRegisters` in |CategoryRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getCategoryRegisters` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteCategoryRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteCategoryRegister` in |CategoryRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteCategoryRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteCategoryRegister` in |CategoryRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteCategoryRegister` in |CategoryRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
