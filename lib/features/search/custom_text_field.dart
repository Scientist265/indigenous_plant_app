import 'package:flutter/material.dart';
import 'package:indigenous_plant/core/config/text_styles.dart';
import 'package:indigenous_plant/shared/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText,
    this.prefixIcon,
    this.hintText,
    this.onChanged,
  });

  final TextEditingController? controller;

  final String? Function(String?)? validator;
  final Widget? suffixIcon, prefixIcon;
  final bool? obscureText;
  final String? hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          suffixIcon: suffixIcon ?? const Icon(Icons.document_scanner_rounded),
          // prefixIcon: prefixIcon,
          prefixIcon: prefixIcon ??
              const Icon(
                Icons.search_sharp,
                color: AppColors.blackColor,
              ),
          hintText: hintText,
          hintStyle: ApptextStyles.kLabelStyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  const BorderSide(color: AppColors.tealColor, width: 1.5)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red, width: 0.5)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.5)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.5)),
        ),
        controller: controller,
        cursorColor: AppColors.greyColor,
        style: ApptextStyles.kLabelStyle.copyWith(color: AppColors.blackColor),
        validator: validator,
      ),
    );
  }
}
