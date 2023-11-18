import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/sales_invoice/data/models/sales_invoice_model.dart';

abstract class SalesInvoiceRemoteDataSource {
  Future<List<SalesInvoiceModel>> getSalesInvoices({required int repositoryId});

  Future<SalesInvoiceModel> getSalesInvoice({required int id});

  Future<List<SalesInvoiceModel>> getSalesInvoicesArchive({required int repositoryId});

  Future<SalesInvoiceModel> getSalesInvoiceArchive({required int id});

  Future<List<RegisterModel>> getSalesInvoiceRegisters({required int id});

  Future<Unit> createSalesInvoice({required SalesInvoiceModel salesInvoiceModel});

  Future<Unit> updateSalesInvoice({required SalesInvoiceModel salesInvoiceModel});

  Future<Unit> deleteSalesInvoice({required int id});

  Future<Unit> deleteSalesInvoiceRegister({required int id});

  Future<Unit> meetDebtSalesInvoice({required int id, required double payment});

  Future<Unit> addSalesInvoiceToArchive({required int id});

  Future<Unit> removeSalesInvoiceFromArchive({required int id});
}

class SalesInvoiceRemoteDataSourceImpl extends SalesInvoiceRemoteDataSource {
  ApiService apiService;

  SalesInvoiceRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<SalesInvoiceModel>> getSalesInvoices({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoices` in |SalesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSalesInvoices,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<SalesInvoiceModel> salesInvoices = mapData['data']
          .map<SalesInvoiceModel>(
            (item) => SalesInvoiceModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getSalesInvoices` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(salesInvoices);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSalesInvoices` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<SalesInvoiceModel> getSalesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSalesInvoice,
        parameters: {'id': id.toString()},
      );
      final SalesInvoiceModel salesInvoice = SalesInvoiceModel.fromJson(mapData);

      Get.find<Logger>().f("End `getSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(salesInvoice);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<SalesInvoiceModel>> getSalesInvoicesArchive({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoicesArchive` in |SalesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSalesInvoicesArchive,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<SalesInvoiceModel> salesInvoices = mapData['data']
          .map<SalesInvoiceModel>(
            (item) => SalesInvoiceModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getSalesInvoicesArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(salesInvoices);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSalesInvoicesArchive` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<SalesInvoiceModel> getSalesInvoiceArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoiceArchive` in |SalesInvoiceRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSalesInvoiceArchive,
        parameters: {'id': id.toString()},
      );
      final SalesInvoiceModel salesInvoice = SalesInvoiceModel.fromJson(mapData);

      Get.find<Logger>().f("End `getSalesInvoiceArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(salesInvoice);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSalesInvoiceArchive` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getSalesInvoiceRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoiceRegisters` in |SalesInvoiceRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getSalesInvoiceRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getSalesInvoiceRegisters` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getSalesInvoiceRegisters` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> createSalesInvoice({required SalesInvoiceModel salesInvoiceModel}) async {
    try {
      Get.find<Logger>().i("Start `createSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.createSalesInvoice,
        data: salesInvoiceModel.toJson(),
      );
      Get.find<Logger>().f("End `createSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateSalesInvoice({required SalesInvoiceModel salesInvoiceModel}) async {
    try {
      Get.find<Logger>().i("Start `updatesalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.updateSalesInvoice,
        data: salesInvoiceModel.toJson(),
      );
      Get.find<Logger>().f("End `updateSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteSalesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteSalesInvoice,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteSalesInvoiceRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSalesInvoiceRegister` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteSalesInvoiceRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteSalesInvoiceRegister` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteSalesInvoiceRegister` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> meetDebtSalesInvoice({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.meetDebtSalesInvoice,
        data: {
          'id': id,
          'payment': payment,
        },
      );
      Get.find<Logger>().f("End `meetDebtSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `meetDebtSalesInvoice` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> addSalesInvoiceToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addSalesInvoiceToArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.addSalesInvoiceToArchive,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `addSalesInvoiceToArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `addSalesInvoiceToArchive` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> removeSalesInvoiceFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeSalesInvoiceFromArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.removeSalesInvoiceFromArchive,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `removeSalesInvoiceFromArchive` in |SalesInvoiceRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `removeSalesInvoiceFromArchive` in |SalesInvoiceRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
