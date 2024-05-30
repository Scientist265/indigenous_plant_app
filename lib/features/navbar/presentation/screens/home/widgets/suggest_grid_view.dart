import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/models/suggestion.dart';

class SuggestedGridView extends StatelessWidget {
  const SuggestedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.kheight * 0.4,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: plantSuggestions.length, // total number of items
        itemBuilder: (context, index) {
          final plants = plantSuggestions[index];
          return Container(
            height: 124,
            width: 128,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor,
                borderRadius: BorderRadius.circular(16.h)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("${plants.imgPath}"),
                6.ht,
                Text(
                  "${plants.plantName}",
                  style: ApptextStyles.kPrimaryStyle,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
