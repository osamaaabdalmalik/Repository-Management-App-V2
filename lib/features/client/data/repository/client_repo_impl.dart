import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/Client/data/data_sources/Client_remote_data_source.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class ClientRepoImpl implements ClientRepo {
  final ClientRemoteDataSource clientRemoteDataSource;

  ClientRepoImpl({required this.clientRemoteDataSource});

  @override
  Future<Either<Failure, List<Client>>> getClients({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getClients` in |ClientRepoImpl|");
      var clientsModels = await clientRemoteDataSource.getClients(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getClients` in |ClientRepoImpl|");
      return Right(clientsModels);
    } catch (e) {
      Get.find<Logger>().e("End `getClients` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Client>> getClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getClient` in |ClientRepoImpl|");
      var clientModel = await clientRemoteDataSource.getClient(id: id);
      Get.find<Logger>().f("End `getClient` in |ClientRepoImpl|");
      return Right(clientModel);
    } catch (e) {
      Get.find<Logger>().e("End `getClient` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Client>>> getArchivesClients({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getArchivesClients` in |ClientRepoImpl|");
      var clientsModels = await clientRemoteDataSource.getArchivesClients(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getArchivesClients` in |ClientRepoImpl|");
      return Right(clientsModels);
    } catch (e) {
      Get.find<Logger>().e("End `getArchivesClients` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Client>> getArchiveClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getArchiveClient` in |ClientRepoImpl|");
      var clientModel = await clientRemoteDataSource.getArchiveClient(id: id);
      Get.find<Logger>().f("End `getArchiveClient` in |ClientRepoImpl|");
      return Right(clientModel);
    } catch (e) {
      Get.find<Logger>().e("End `getArchiveClient` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createClient({required Client client, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `createClient` in |ClientRepoImpl|");
      await clientRemoteDataSource.createClient(
        clientModel: client.toModel(),
        photo: photo,
      );
      Get.find<Logger>().f("End `createClient` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `createClient` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateClient({required Client client, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateClient` in |ClientRepoImpl|");
      await clientRemoteDataSource.updateClient(
        clientModel: client.toModel(),
        photo: photo,
      );
      Get.find<Logger>().f("End `updateClient` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateClient` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteClient({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteClient` in |ClientRepoImpl|");
      await clientRemoteDataSource.deleteClient(id: id);
      Get.find<Logger>().f("End `deleteClient` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteClient` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getClientRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getClientRegisters` in |ClientRepoImpl|");
      var clientsRegistersModels = await clientRemoteDataSource.getClientRegisters(id: id);
      Get.find<Logger>().f("End `getClientRegisters` in |ClientRepoImpl|");
      return Right(clientsRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getClientRegisters` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteClientRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteClientRegister` in |ClientRepoImpl|");
      await clientRemoteDataSource.deleteClientRegister(id: id);
      Get.find<Logger>().f("End `deleteClientRegister` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteClientRegister` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> meetDebtClient({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `deleteClientRegister` in |ClientRepoImpl|");
      await clientRemoteDataSource.meetDebtClient(id: id,payment: payment);
      Get.find<Logger>().f("End `deleteClientRegister` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteClientRegister` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> addClientToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addClientToArchive` in |ClientRepoImpl|");
      await clientRemoteDataSource.addClientToArchive(id: id);
      Get.find<Logger>().f("End `addClientToArchive` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `addClientToArchive` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeClientFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeClientFromArchive` in |ClientRepoImpl|");
      await clientRemoteDataSource.removeClientFromArchive(id: id);
      Get.find<Logger>().f("End `removeClientFromArchive` in |ClientRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `removeClientFromArchive` in |ClientRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
