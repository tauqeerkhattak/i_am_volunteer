import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final double? width;
  final Color? color;
  final Function() onTap;
  const CustomButton({
    super.key,
    required this.label,
    required this.onTap,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: width ?? Get.width * 0.5,
        height: 50,
        decoration: BoxDecoration(
          color: color ?? AppColors.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: CustomText(
            text: label,
            fontSize: 30,
            weight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
