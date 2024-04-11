import 'package:bnews/controller/login_controller.dart';
import 'package:bnews/res/consts/colors.dart';
import 'package:bnews/res/consts/strings.dart';
import 'package:bnews/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                controller.navigateAsGuest();
              },
              child: const Text(AppStrings.continueAsguest),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.login,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const Text(
                  AppStrings.followSimple,
                  style:
                      TextStyle(fontSize: 14, color: AppColors.secondaryText),
                ),

                40.heightBox,

                const CustomTextField(
                  hint: AppStrings.emailHint,
                  lable: AppStrings.email,
                ),
                const CustomTextField(
                  hint: AppStrings.passwordHint,
                  lable: AppStrings.password,
                  isPassword: true,
                ),
                30.heightBox,

//     ----------   Login Button   ------------

                SizedBox(
                  width: context.screenWidth,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryButton),
                    onPressed: () {},
                    child: Text(
                      AppStrings.login,
                      style: const TextStyle(color: AppColors.white),
                    ),
                  ),
                ),

                10.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(
                          fontSize: 14, color: AppColors.secondaryText),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.navigateToSignup();
                        },
                        child: Text(AppStrings.signup)),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
