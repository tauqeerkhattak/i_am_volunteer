import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_volunteer/routes/app_routes.dart';
import 'package:i_am_volunteer/utils/ui_utils.dart';

import '../../controllers/auth_controller.dart';
import '../../utils/app_assets.dart';
import '../../widgets/custom_button.dart';

class AuthDashboard extends StatelessWidget {
  final controller = Get.find<AuthController>();
  AuthDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppAssets.leftArc,
            ),
          ),
          Positioned(
            top: 0,
            left: 100,
            child: Image.asset(
              AppAssets.centerArc,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 90,
            child: Transform.rotate(
              angle: pi,
              child: Image.asset(
                AppAssets.centerArc,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: -20,
            child: Image.asset(
              AppAssets.bottomRightArc,
              height: 200,
              width: 200,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.logo,
                ),
                UiUtils.vertSpace40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      label: 'Login',
                      width: Get.width * 0.4,
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.login,
                        );
                      },
                    ),
                    UiUtils.hrtSpace20,
                    CustomButton(
                      label: 'Register',
                      width: Get.width * 0.4,
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.register,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
