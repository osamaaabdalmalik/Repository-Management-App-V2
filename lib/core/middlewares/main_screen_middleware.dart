import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;


  @override
  RouteSettings? redirect(String? route) {
    // var c = Get.put(ProfileController());
    // GetPrimitiveDataUseCase getPrimitiveDataUseCase = GetIt.instance();
    // Get.put(EasyLoaderService());
    // if (c.user != null && c.user!.role == Role.trader) {
    //   bool? hasStores = getPrimitiveDataUseCase<bool>(key: AppKeys.hasStores).fold(
    //     (l) => false,
    //     (r) => r,
    //   );
    //   if (hasStores != null && hasStores) {
    //     return const RouteSettings(name: AppPagesRoutes.mainScreen);
    //   }
    //   bool? hasStoresRequests = getPrimitiveDataUseCase<bool>(key: AppKeys.hasStoresRequests).fold(
    //     (l) => false,
    //     (r) => r,
    //   );
    //   if (hasStoresRequests != null && hasStoresRequests) {
    //     Get.put(StoresController(isLoadStoreRequests: true,isLoadStore: false));
    //     Get.put(AuthController(stepNumber: 3));
    //     return const RouteSettings(name: AppPagesRoutes.signUpScreen);
    //   }
    //   Get.put(StoresController(isLoadStore: false));
    //   Get.put(AuthController(stepNumber: 2));
    //   return const RouteSettings(name: AppPagesRoutes.signUpScreen);
    // }
    return null;
  }
}
