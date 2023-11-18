import 'package:get/get.dart';
import 'package:rms/features/product/data/data_sources/product_remote_data_source.dart';
import 'package:rms/features/product/data/repository/product_repo_impl.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';
import 'package:rms/features/product/domain/usecases/delete_product_register_use_case.dart';
import 'package:rms/features/product/domain/usecases/delete_product_use_case.dart';
import 'package:rms/features/product/domain/usecases/get_product_registers_use_case.dart';
import 'package:rms/features/product/domain/usecases/get_product_use_case.dart';
import 'package:rms/features/product/domain/usecases/get_products_use_case.dart';
import 'package:rms/features/product/domain/usecases/update_product_use_case.dart';

class AuthBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<ProductRemoteDataSource>(
      ProductRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<ProductRepo>(
      ProductRepoImpl(productRemoteDataSource: Get.find()),
    );

    Get.put(GetProductsUseCase(Get.find()));
    Get.put(GetProductUseCase(Get.find()));
    Get.put(GetProductRegistersUseCase(Get.find()));
    Get.put(UpdateProductUseCase(Get.find()));
    Get.put(DeleteProductUseCase(Get.find()));
    Get.put(DeleteProductRegisterUseCase(Get.find()));
  }
}
