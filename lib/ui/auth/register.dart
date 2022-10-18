import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_volunteer/controllers/auth_controller.dart';
import 'package:i_am_volunteer/routes/app_routes.dart';

import '../../painters/login_painter.dart';
import '../../utils/app_assets.dart';
import '../../utils/ui_utils.dart';
import '../../widgets/corner_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/input_field.dart';
import '../../widgets/styled_button.dart';

class Register extends StatelessWidget {
  final controller = Get.find<AuthController>();

  Register({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _topIllustration(),
          Expanded(
            child: _body(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CornerButton(
                label: 'Sign In',
                onTap: () {
                  Get.offNamed(
                    AppRoutes.login,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topIllustration() {
    return CustomPaint(
      painter: LoginPainter(),
      child: SizedBox(
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

  Widget _body() {
    return SingleChildScrollView(
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
    );
  }
}
