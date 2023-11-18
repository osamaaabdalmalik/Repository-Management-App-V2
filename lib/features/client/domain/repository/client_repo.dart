import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';

abstract class ClientRepo {
  Future<Either<Failure, List<Client>>> getClients({required int repositoryId});

  Future<Either<Failure, Client>> getClient({required int id});

  Future<Either<Failure, List<Client>>> getArchivesClients({required int repositoryId});

  Future<Either<Failure, Client>> getArchiveClient({required int id});

  Future<Either<Failure, List<Register>>> getClientRegisters({required int id});

  Future<Either<Failure, Unit>> createClient({required Client client, File? photo});

  Future<Either<Failure, Unit>> updateClient({required Client client, File? photo});

  Future<Either<Failure, Unit>> deleteClient({required int id});

  Future<Either<Failure, Unit>> deleteClientRegister({required int id});

  Future<Either<Failure, Unit>> meetDebtClient({required int id, required double payment});

  Future<Either<Failure, Unit>> addClientToArchive({required int id});

  Future<Either<Failure, Unit>> removeClientFromArchive({required int id});
}
