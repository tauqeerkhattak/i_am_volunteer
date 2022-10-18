import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import 'custom_text.dart';

class CornerButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const CornerButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 60,
        alignment: Alignment.bottomRight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.cornerButton,
            ),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: Center(
          child: CustomText(
            text: label,
            fontSize: 24,
            enableUnderline: true,
            weight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
