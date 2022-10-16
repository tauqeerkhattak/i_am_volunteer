import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? prefixAsset;
  final String? suffixAsset;
  final double? paddingVertical;
  final double? paddingHorizontal;

  const InputField({
    super.key,
    required this.controller,
    this.hint,
    this.prefixAsset,
    this.suffixAsset,
    this.paddingVertical = 30,
    this.paddingHorizontal = 30,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical!,
        horizontal: paddingHorizontal!,
      ),
      child: PhysicalModel(
        color: Colors.white,
        elevation: 8.0,
        borderRadius: BorderRadius.circular(8),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixAsset != null
                ? Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      prefixAsset!,
                      color: Colors.black,
                      width: 30,
                      height: 30,
                    ),
                  )
                : const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
            suffixIcon: suffixAsset != null
                ? Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      suffixAsset!,
                      width: 30,
                      height: 30,
                    ),
                  )
                : const Icon(
                    Icons.person,
                  ),
            contentPadding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w200,
              letterSpacing: 2.0,
              fontSize: 24,
              color: Colors.black,
            ),
            hintText: hint,
            border: _normalBorder(),
            focusedBorder: _normalBorder(),
            disabledBorder: _normalBorder(),
            enabledBorder: _normalBorder(),
            errorBorder: _errorBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _normalBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.65),
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
