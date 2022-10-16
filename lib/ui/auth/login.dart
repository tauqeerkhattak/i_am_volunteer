import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../../painters/login_painter.dart';
import '../../utils/app_assets.dart';
import '../../utils/ui_utils.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/input_field.dart';
import '../../widgets/styled_button.dart';

class Login extends StatelessWidget {
  final controller = Get.find<AuthController>();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // extendBody: true,
      body: Column(
        children: [
          _topIllustration(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InputField(
                    paddingVertical: 10,
                    controller: controller.nameController,
                    hint: 'NAME',
                    suffixAsset: AppAssets.person,
                  ),
                  InputField(
                    paddingVertical: 10,
                    controller: controller.nameController,
                    hint: 'EMAIL',
                    suffixAsset: AppAssets.mail,
                  ),
                  InputField(
                    paddingVertical: 10,
                    controller: controller.nameController,
                    hint: 'PASSWORD',
                    suffixAsset: AppAssets.eye,
                  ),
                  UiUtils.vertSpace30,
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        StyledButton(
                          onTap: () {
                            log('Sign Up');
                          },
                          label: 'Sign Up',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _topIllustration() {
    return CustomPaint(
      painter: LoginPainter(),
      child: Container(
        // color: Colors.pink,
        height: Get.height * 0.45,
        child: Column(
          children: [
            UiUtils.vertSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  child: Center(
                    child: CustomText(
                      text: 'Create\nAccount',
                      color: Colors.white,
                      weight: FontWeight.w500,
                      fontSize: 36,
                      enableShadow: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    AppAssets.manCreativity,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
