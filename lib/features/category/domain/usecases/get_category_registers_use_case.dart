import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class GetCategoryRegistersUseCase {
  final CategoryRepo repo;

  GetCategoryRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetCategoryRegistersUseCase");
    return await repo.getCategoryRegisters(id: id);
  }
}
