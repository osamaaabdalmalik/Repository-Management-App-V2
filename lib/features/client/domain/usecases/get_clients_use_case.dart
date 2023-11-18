import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class GetClientsUseCase {
  final ClientRepo repo;

  GetClientsUseCase(this.repo);

  Future<Either<Failure, List<Client>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetClientsUseCase");
    return await repo.getClients(repositoryId: repositoryId);
  }
}
