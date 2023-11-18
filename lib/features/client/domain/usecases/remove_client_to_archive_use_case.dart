import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class RemoveClientToArchiveUseCase {
  final ClientRepo repo;

  RemoveClientToArchiveUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call RemoveClientToArchiveUseCase");
    return await repo.removeClientFromArchive(id: id);
  }
}
