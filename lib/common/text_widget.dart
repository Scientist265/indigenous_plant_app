import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/app_colors.dart';

class ReusableText extends StatelessWidget {
  const ReusableText(
      {super.key,
      this.textAlign,
      required this.text,
      this.fontSizing,
      this.weight,
      this.textColor});
  final TextAlign? textAlign;
  final String text;
  final double? fontSizing;
  final FontWeight? weight;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: fontSizing ?? 13.sp,
        fontWeight: weight ?? FontWeight.normal,
        color: textColor ?? AppColors.blackColor,
      ),
    );
  }
}

Widget textUnderline({String text = ""}) {
  return GestureDetector(
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12.sp,
        color: AppColors.blackColor,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.darkGreyColor,
      ),
    ),
  );
}
