import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rms/core/constants/app_colors.dart';
import 'package:rms/core/constants/app_translation_keys.dart';
import 'package:rms/core/helpers/regex.dart';
import 'package:rms/core/widgets/handle_states_widget.dart';
import 'package:rms/core/widgets/primary_button.dart';
import 'package:rms/core/widgets/primary_text_field.dart';
import 'package:rms/features/auth/presentation/controller/auth_controller.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (controller) => HandleStatesWidget(
          stateType: controller.signInState,
          validationMessage: controller.validationMessage,
          child: Form(
            key: controller.signInFormKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    AppTranslationKeys.singIn.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                PrimaryTextField(
                  labelText: AppTranslationKeys.phoneNumber.tr,
                  controller: controller.phoneControllerForSignIn,
                  validator: (value) => AppValidator.validateEmail(value),
                  // TODO Later replace validation for phone `validatePhone`
                  inputType: TextInputType.emailAddress,
                  hintText: AppTranslationKeys.enterYourPhoneNumber.tr,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryTextField(
                  labelText: AppTranslationKeys.password.tr,
                  controller: controller.passwordControllerForSignIn,
                  hintText: AppTranslationKeys.enterPassword.tr,
                  isObscureText: true,
                  validator: (value) => AppValidator.validatePassword(value),
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.update();
                          // Get.toNamed(AppPagesRoutes.forgetPasswordScreen);
                        },
                        child: Text(
                          AppTranslationKeys.forgetPassword.tr,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                PrimaryButton(
                  text: AppTranslationKeys.singIn.tr,
                  onPressed: () async {
                    await controller.signIn();
                  },
                ),
                SizedBox(
                  height: 75.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppTranslationKeys.doNotHaveAnAccount.tr,
                    ),
                    InkWell(
                      onTap: () {
                        controller.update();
                        // Get.toNamed(AppPagesRoutes.signUpScreen);
                      },
                      child: Text(
                        AppTranslationKeys.signUp.tr,
                        style: const TextStyle(
                          color: AppColors.secondary1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom / 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
