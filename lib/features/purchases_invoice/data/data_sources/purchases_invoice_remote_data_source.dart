import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/purchases_invoice/data/models/purchases_invoice_model.dart';

abstract class PurchasesInvoiceRemoteDataSource {
  Future<List<PurchasesInvoiceModel>> getPurchasesInvoices({required int repositoryId});

  Future<PurchasesInvoiceModel> getPurchasesInvoice({required int id});

  Future<List<PurchasesInvoiceModel>> getPurchasesInvoicesArchive({required int repositoryId});

  Future<PurchasesInvoiceModel> getPurchasesInvoiceArchive({required int id});

  Future<List<RegisterModel>> getPurchasesInvoiceRegisters({required int id});

  Future<Unit> createPurchasesInvoice({required PurchasesInvoiceModel purchasesInvoiceModel});

  Future<Unit> updatePurchasesInvoice({required PurchasesInvoiceModel purchasesInvoiceModel});

  Future<Unit> deletePurchasesInvoice({required int id});

  Future<Unit> deletePurchasesInvoiceRegister({required int id});

  Future<Unit> meetDebtPurchasesInvoice({required int id, required double payment});

  Future<Unit> addPurchasesInvoiceToArchive({required int id});

  Future<Unit> removePurchasesInvoiceFromArchive({required int id});
}

class PurchasesInvoiceRemoteDataSourceImpl extends PurchasesInvoiceRemoteDataSource {
  ApiService apiService;

  PurchasesInvoiceRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<PurchasesInvoiceModel>> getPurchasesInvoices({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoices` in |PurchasesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getPurchasesInvoices,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<PurchasesInvoiceModel> purchasesInvoices = mapData['data']
          .map<PurchasesInvoiceModel>(
            (item) => PurchasesInvoiceModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getPurchasesInvoices` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(purchasesInvoices);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getPurchasesInvoices` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<PurchasesInvoiceModel> getPurchasesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getPurchasesInvoice,
        parameters: {'id': id.toString()},
      );
      final PurchasesInvoiceModel purchasesInvoice = PurchasesInvoiceModel.fromJson(mapData);

      Get.find<Logger>().f("End `getPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(purchasesInvoice);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<PurchasesInvoiceModel>> getPurchasesInvoicesArchive({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoicesArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getPurchasesInvoicesArchive,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<PurchasesInvoiceModel> purchasesInvoices = mapData['data']
          .map<PurchasesInvoiceModel>(
            (item) => PurchasesInvoiceModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getPurchasesInvoicesArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(purchasesInvoices);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getPurchasesInvoicesArchive` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<PurchasesInvoiceModel> getPurchasesInvoiceArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoiceArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getPurchasesInvoiceArchive,
        parameters: {'id': id.toString()},
      );
      final PurchasesInvoiceModel purchasesInvoice = PurchasesInvoiceModel.fromJson(mapData);

      Get.find<Logger>().f("End `getPurchasesInvoiceArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(purchasesInvoice);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getPurchasesInvoiceArchive` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getPurchasesInvoiceRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getPurchasesInvoiceRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> createPurchasesInvoice({required PurchasesInvoiceModel purchasesInvoiceModel}) async {
    try {
      Get.find<Logger>().i("Start `createPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.createPurchasesInvoice,
        data: purchasesInvoiceModel.toJson(),
      );
      Get.find<Logger>().f("End `createPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updatePurchasesInvoice({required PurchasesInvoiceModel purchasesInvoiceModel}) async {
    try {
      Get.find<Logger>().i("Start `updatePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.updatePurchasesInvoice,
        data: purchasesInvoiceModel.toJson(),
      );
      Get.find<Logger>().f("End `updatePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updatePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deletePurchasesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deletePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deletePurchasesInvoice,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deletePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deletePurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deletePurchasesInvoiceRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deletePurchasesInvoiceRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> meetDebtPurchasesInvoice({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.meetDebtPurchasesInvoice,
        data: {
          'id': id,
          'payment': payment,
        },
      );
      Get.find<Logger>().f("End `meetDebtPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `meetDebtPurchasesInvoice` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> addPurchasesInvoiceToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.addPurchasesInvoiceToArchive,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> removePurchasesInvoiceFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.removePurchasesInvoiceFromArchive,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
