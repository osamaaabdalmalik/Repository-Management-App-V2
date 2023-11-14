import 'package:get/get.dart';
import 'package:rms/features/auth/auth_bindings.dart';
import 'package:rms/features/auth/presentation/screens/sign_in_screen.dart';

abstract class AppPagesRoutes {
  // Auth
  static const String signInScreen = "/";

  static List<GetPage<dynamic>> appPages = [
    GetPage(
      name: signInScreen,
      page: () => const SignInScreen(),
      transition: Transition.fadeIn,
      binding: AuthBindings(),
    ),
  ];
}
