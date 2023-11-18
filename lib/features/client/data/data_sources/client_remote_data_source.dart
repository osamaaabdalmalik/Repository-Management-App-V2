import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/category/data/models/register_model.dart';
import 'package:rms/features/client/data/models/client_model.dart';

abstract class ClientRemoteDataSource {
  Future<List<ClientModel>> getClients({required int repositoryId});

  Future<ClientModel> getClient({required int id});

  Future<List<ClientModel>> getArchivesClients({required int repositoryId});

  Future<ClientModel> getArchiveClient({required int id});

  Future<List<RegisterModel>> getClientRegisters({required int id});

  Future<Unit> createClient({required ClientModel clientModel, File? photo});

  Future<Unit> updateClient({required ClientModel clientModel, File? photo});

  Future<Unit> deleteClient({required int id});

  Future<Unit> deleteClientRegister({required int id});

  Future<Unit> meetDebtClient({required int id, required double payment});

  Future<Unit> addClientToArchive({required int id});

  Future<Unit> removeClientFromArchive({required int id});
}

class ClientRemoteDataSourceImpl extends ClientRemoteDataSource {
  ApiService apiService;

  ClientRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<ClientModel>> getClients({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getClients` in |ClientRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getClients,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<ClientModel> clients = mapData['data']
          .map<ClientModel>(
            (item) => ClientModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getClients` in |ClientRemoteDataSourceImpl|");
      return Future.value(clients);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getClients` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<ClientModel> getClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getClient` in |ClientRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getClient,
        parameters: {'id': id.toString()},
      );
      final ClientModel client = ClientModel.fromJson(mapData);

      Get.find<Logger>().f("End `getClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(client);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<ClientModel>> getArchivesClients({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getArchivesClients` in |ClientRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getArchivesClients,
        parameters: {
          'repository_id': repositoryId.toString(),
        },
      );
      final List<ClientModel> clients = mapData['data']
          .map<ClientModel>(
            (item) => ClientModel.fromJson(item),
          )
          .toList();

      Get.find<Logger>().f("End `getArchivesClients` in |ClientRemoteDataSourceImpl|");
      return Future.value(clients);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getArchivesClients` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<ClientModel> getArchiveClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getArchiveClient` in |ClientRemoteDataSourceImpl|");

      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getArchiveClient,
        parameters: {'id': id.toString()},
      );
      final ClientModel client = ClientModel.fromJson(mapData);

      Get.find<Logger>().f("End `getArchiveClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(client);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getArchiveClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> createClient({required ClientModel clientModel, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `createClient` in |ClientRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.createClient,
        data: clientModel.toJson(),
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `createClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `createClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> updateClient({required ClientModel clientModel, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateClient` in |ClientRemoteDataSourceImpl|");
      await apiService.postMultiPart(
        subUrl: AppApiRoutes.updateClient,
        data: clientModel.toJson(),
        file: photo,
        fieldFileKey: 'photo',
      );
      Get.find<Logger>().f("End `updateClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `updateClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteClient` in |ClientRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteClient,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<List<RegisterModel>> getClientRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getClientRegisters` in |ClientRemoteDataSourceImpl|");
      Map<String, dynamic> mapData = await apiService.get(
        subUrl: AppApiRoutes.getClientRegisters,
        parameters: {'id': id.toString()},
      );
      final List<RegisterModel> registers = mapData['data']
          .map<RegisterModel>(
            (item) => RegisterModel.fromJson(item),
          )
          .toList();
      Get.find<Logger>().f("End `getClientRegisters` in |ClientRemoteDataSourceImpl|");
      return Future.value(registers);
    } catch (e) {
      Get.find<Logger>().e(
        "End `getClientRegisters` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> deleteClientRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteClientRegister` in |ClientRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteClientRegister,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `deleteClientRegister` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `deleteClientRegister` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> meetDebtClient({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtClient` in |ClientRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.deleteClientRegister,
        data: {
          'id': id,
          'payment': payment,
        },
      );
      Get.find<Logger>().f("End `meetDebtClient` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `meetDebtClient` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> addClientToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addClientToArchive` in |ClientRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.addClientToArchives,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `addClientToArchive` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `addClientToArchive` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> removeClientFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeClientFromArchive` in |ClientRemoteDataSourceImpl|");
      await apiService.post(
        subUrl: AppApiRoutes.removeClientFromArchives,
        data: {'id': id},
      );
      Get.find<Logger>().f("End `removeClientFromArchive` in |ClientRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `removeClientFromArchive` in |ClientRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
