import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/ui_utils.dart';
import 'custom_text.dart';

class StyledButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const StyledButton({
    super.key,
    required this.label,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          CustomText(
            text: label,
            family: 'Roboto',
            fontSize: 30,
            weight: FontWeight.w500,
          ),
          UiUtils.hrtSpace20,
          Container(
            width: 48,
            height: 45,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.tinyEllipse,
                ),
              ),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
