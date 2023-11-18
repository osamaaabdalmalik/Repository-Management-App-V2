import 'package:get/get.dart';
import 'package:rms/features/category/data/data_sources/category_remote_data_source.dart';
import 'package:rms/features/category/data/repository/category_repo_impl.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';
import 'package:rms/features/category/domain/usecases/delete_category_register_use_case.dart';
import 'package:rms/features/category/domain/usecases/delete_category_use_case.dart';
import 'package:rms/features/category/domain/usecases/get_category_registers_use_case.dart';
import 'package:rms/features/category/domain/usecases/get_category_use_case.dart';
import 'package:rms/features/category/domain/usecases/update_category_use_case.dart';
import 'package:rms/features/product/domain/usecases/get_products_use_case.dart';

class CategoryBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<CategoryRemoteDataSource>(
      CategoryRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<CategoryRepo>(
      CategoryRepoImpl(categoryRemoteDataSource: Get.find()),
    );

    Get.put(GetProductsUseCase(Get.find()));
    Get.put(GetCategoryUseCase(Get.find()));
    Get.put(GetCategoryRegistersUseCase(Get.find()));
    Get.put(UpdateCategoryUseCase(Get.find()));
    Get.put(DeleteCategoryUseCase(Get.find()));
    Get.put(DeleteCategoryRegisterUseCase(Get.find()));
  }
}
