import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indigenous_plant/shared/constants/app_colors.dart';

class ApptextStyles {
  static TextStyle kLabelStyle = GoogleFonts.poppins(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.darkGreyColor,
  );
  static TextStyle kPrimaryStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.blackColor,
  );
  static TextStyle kbuttonStyle = GoogleFonts.poppins(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.realWhiteColor,
  );
  static TextStyle kHeaderStyle = GoogleFonts.poppins(
    fontSize: 28,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
  );
}
