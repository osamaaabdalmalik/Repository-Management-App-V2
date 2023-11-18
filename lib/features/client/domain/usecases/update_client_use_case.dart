import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/client/domain/entities/client_entity.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';

class UpdateClientUseCase {
  final ClientRepo repo;

  UpdateClientUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required Client client,
    File? photo,
  }) async {
    Get.find<Logger>().i("Call UpdateClientUseCase");
    return await repo.updateClient(
      client: client.toModel(),
      photo: photo,
    );
  }
}
