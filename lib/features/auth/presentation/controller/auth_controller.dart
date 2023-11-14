import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_enums.dart';
import 'package:rms/core/helpers/get_state_from_failure.dart';
import 'package:rms/features/auth/domain/entities/sign_in_entity.dart';
import 'package:rms/features/auth/domain/usecases/sign_in_use_case.dart';

class AuthController extends GetxController {
  SignInUseCase signInUseCase = Get.find<SignInUseCase>();

  StateType signInState = StateType.init;

  TextEditingController phoneControllerForSignIn = TextEditingController();
  TextEditingController passwordControllerForSignIn = TextEditingController();
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  String validationMessage = '';


  @override
  void onInit() async {
    Get.find<Logger>().i("Start onInit AuthController");
    super.onInit();
    Get.find<Logger>().f("End onInit AuthController");
  }

  // Functions Interact with Background Event
  Future<void> signIn() async {
    Get.find<Logger>().i("Start `signIn` in |AuthController|");
    if (!signInFormKey.currentState!.validate()) {
      return;
    }
    signInState = StateType.loading;
    update();
    var result = await signInUseCase(
      signIn: SignIn(
        phone: phoneControllerForSignIn.text,
        password: passwordControllerForSignIn.text,
      ),
    );
    result.fold(
      (l) async {
        signInState = getStateFromFailure(l);
        validationMessage = l.message;
        update();
        await Future.delayed(const Duration(milliseconds: 50));
        signInState = StateType.init;
      },
      (r) {
        signInState = StateType.success;
        // Get.offAllNamed(AppPagesRoutes.mainScreen);
        update();
      },
    );
    Get.find<Logger>().f("End `signIn` in |AuthController| $signInState");
  }
}

// Screen -> Controller -> UseCase -> Repo -> remoteDataSource -> ApiService
