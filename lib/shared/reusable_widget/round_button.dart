import 'package:flutter/material.dart';
import 'package:indigenous_plant/shared/constants/constants.dart';
import 'package:indigenous_plant/shared/constants/extension.dart';
import 'package:indigenous_plant/core/config/text_styles.dart';

import '../constants/app_colors.dart';
import '../util_funcs.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
  });

  final VoidCallback? onPressed;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: Constants.defaultPadding,
        height: 45,
        width: Constants.kWidth,
        decoration: BoxDecoration(
          color: AppColors.tealColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.tealColor,
          ),
        ),
        child: Center(
          child: Text(label, style: ApptextStyles.kbuttonStyle),
        ),
      ),
    );
  }
}

class GoogleSignButton extends StatelessWidget {
  const GoogleSignButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
  });

  final VoidCallback? onPressed;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: Constants.defaultPadding,
        height: 45,
        width: Constants.kWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.tealColor,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              svgLogo(),
              6.wt,
              Text(label,
                  style: ApptextStyles.kbuttonStyle
                      .copyWith(color: AppColors.tealColor)),
            ],
          ),
        ),
      ),
    );
  }
}
