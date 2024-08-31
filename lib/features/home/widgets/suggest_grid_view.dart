import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/core/config/text_styles.dart';
import 'package:indigenous_plant/shared/constants/app_colors.dart';
import 'package:indigenous_plant/shared/constants/constants.dart';
import 'package:indigenous_plant/shared/constants/extension.dart';
import 'package:indigenous_plant/features/home/models/suggestion.dart';
import 'package:indigenous_plant/features/home/plant_detail_page.dart';

class SuggestedGridView extends StatelessWidget {
  const SuggestedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.kheight * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 18.0, // spacing between rows
          crossAxisSpacing: 18.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: plantSuggestions.length, // total number of items
        itemBuilder: (context, index) {
          final plants = plantSuggestions[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => PlantDetailPage(
                    imgPath: "${plants.imgPath}",
                    plantName: "${plants.plantName}",
                    images: plants.images,
                    plantDesc: "${plants.description}",
                    economicValue: '${plants.economicValue}',
                    localValue: '${plants.localValue}',
                    habitat: '${plants.habitat}',
                  ),
                ),
              );
            },
            child: Container(
              height: 124,
              width: 128,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.neutralColor,
                  borderRadius: BorderRadius.circular(6.h)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 110,
                    width: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            image: AssetImage(
                              "${plants.imgPath}",
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                  12.ht,
                  Text(
                    "${plants.plantName}",
                    style: ApptextStyles.kLabelStyle,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
