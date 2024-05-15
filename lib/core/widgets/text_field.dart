import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isPassword = false,
      this.keyBoardType = TextInputType.text,
      required this.textInputAction,
      this.validator});

  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final TextInputType keyBoardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColors.greyColor,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: AppColors.tealColor,
            width: 1.5,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 1.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.teal,
            width: 1.5,
          ),
        ),
      ),
      obscureText: isPassword,
      keyboardType: keyBoardType,
      textInputAction: textInputAction,
      validator: validator,
    );
  }
}
