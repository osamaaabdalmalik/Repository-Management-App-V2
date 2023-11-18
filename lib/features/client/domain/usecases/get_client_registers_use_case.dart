import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class GetClientRegistersUseCase {
  final ClientRepo repo;

  GetClientRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetClientRegistersUseCase");
    return await repo.getClientRegisters(id: id);
  }
}
