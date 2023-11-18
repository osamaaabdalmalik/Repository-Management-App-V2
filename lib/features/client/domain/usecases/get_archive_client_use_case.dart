import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class GetArchiveClientUseCase {
  final ClientRepo repo;

  GetArchiveClientUseCase(this.repo);

  Future<Either<Failure, Client>> call({required int id}) async {
    Get.find<Logger>().i("Call GetArchiveClientUseCase");
    return await repo.getArchiveClient(id: id);
  }
}
