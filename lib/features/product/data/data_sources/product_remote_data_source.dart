import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/product/data/models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts({required int repositoryId});

  Future<ProductModel> getProduct({required int id});

  Future<Unit> updateProduct({required ProductModel productModel, File? photo});

  Future<Unit> deleteProduct({required int id});

  Future<List<RegisterModel>> getProductRegisters({required int id});

  Future<Unit> deleteProductRegister({required int id});
}

class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  ApiService apiService;

  ProductRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<ProductModel>> getProducts({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getProducts` in |ProductRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getProducts,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<ProductModel> products = mapData['data']
          .map<ProductModel>(
            (item) => ProductModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getProducts` in |ProductRemoteDataSourceImpl|");
      return Future.value(products);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getProducts` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<ProductModel> getProduct({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getProduct` in |ProductRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getProduct,
        parameters: {'id': id.toString()},
      );
      final ProductModel product = ProductModel.fromJson(mapData);

      Get.find<Logger>().f("End `getProduct` in |ProductRemoteDataSourceImpl|");
      return Future.value(product);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getProduct` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateProduct({required ProductModel productModel, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateProduct` in |ProductRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.updateProduct,
        data: productModel.toJson(),
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `updateProduct` in |ProductRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateProduct` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteProduct({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteProduct` in |ProductRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteProduct,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteProduct` in |ProductRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteProduct` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getProductRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getProductRegisters` in |ProductRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getProductRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getProductRegisters` in |ProductRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getProductRegisters` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteProductRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteProductRegister` in |ProductRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteProductRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteProductRegister` in |ProductRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteProductRegister` in |ProductRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
