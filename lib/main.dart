import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rms/intial_bindings.dart';
import 'package:rms/core/constants/app_pages_routes.dart';
import 'package:rms/core/constants/app_translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences pref = await SharedPreferences.getInstance();
  Get.put(pref);
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final MainController controller = Get.put(MainController());

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        title: 'Al Mutawasit',
        debugShowCheckedModeBanner: false,
        // locale: controller.language,
        translations: AppTranslations(),
        // theme: controller.appTheme,
        builder: EasyLoading.init(),
        initialBinding: InitialBindings(),
        getPages: AppPagesRoutes.appPages,
      ),
      designSize: const Size(432, 816),
    );
  }
}
