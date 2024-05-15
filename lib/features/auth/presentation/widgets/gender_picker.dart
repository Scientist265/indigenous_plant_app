import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import 'gender_radio.dart';

class GenderPicker extends StatelessWidget {
  const GenderPicker({super.key, this.gender, required this.onChanged});
  final String? gender;
  final Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: Constants.defaultPadding,
      decoration: const BoxDecoration(
        color: AppColors.realWhiteColor,
      ),
      child: Column(
        children: [
          GenderRadioTile(
            title: "Male",
            value: "male",
            selectedValue: gender,
            onChanged: onChanged,
          ),
          GenderRadioTile(
            
            title: "Female",
            value: "female",
            selectedValue: gender,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
