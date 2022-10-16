import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final RxDouble splashLoading = 0.0.obs;
  Timer? timer;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (timer) {
        splashLoading.value += 0.025;
        if (splashLoading.value >= 1.0) {
          Get.toNamed(
            AppRoutes.authDashboard,
          );
          timer.cancel();
        }
      },
    );
  }
}
