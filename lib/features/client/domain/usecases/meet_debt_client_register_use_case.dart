import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class MeetDebtClientRegisterUseCase {
  final ClientRepo repo;

  MeetDebtClientRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id,required double payment}) async {
    Get.find<Logger>().i("Call MeetDebtClientRegisterUseCase");
    return await repo.meetDebtClient(id: id,payment: payment);
  }
}
