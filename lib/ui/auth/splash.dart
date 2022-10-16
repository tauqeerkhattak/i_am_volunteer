import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_utils.dart';
import '../../widgets/custom_text.dart';

class Splash extends StatelessWidget {
  final controller = Get.find<AuthController>();

  Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'VOLUNTEER',
                fontSize: 40,
                spacing: 10,
                enableShadow: true,
                weight: FontWeight.w700,
                color: AppColors.heading,
              ),
              UiUtils.vertSpace20,
              Image.asset(
                AppAssets.splashGraphic,
              ),
              Obx(
                () => LinearProgressIndicator(
                  backgroundColor: AppColors.heading.withOpacity(0.5),
                  valueColor: AlwaysStoppedAnimation(
                    AppColors.heading,
                  ),
                  value: controller.splashLoading.value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
