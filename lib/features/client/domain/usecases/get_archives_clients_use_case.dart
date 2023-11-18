import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class GetArchivesClientsUseCase {
  final ClientRepo repo;

  GetArchivesClientsUseCase(this.repo);

  Future<Either<Failure, List<Client>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetArchivesClientsUseCase");
    return await repo.getArchivesClients(repositoryId: repositoryId);
  }
}
