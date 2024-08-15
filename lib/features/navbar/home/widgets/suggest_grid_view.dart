import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';

import '../search/features/detail_pages/suggested_plant_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuggestedGridView extends StatelessWidget {
  const SuggestedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final appText = AppLocalizations.of(context);

    List<PlantSuggestion> suggests = [
      PlantSuggestion(
        imgPath: "assets/images/okro.png",
        plantName: appText!.okro,
        description: appText.okro_desc,
        economicValue: appText.okro_economic_value,
        localValue: appText.okro_local_value,
        habitat: appText.okro_habitat,
        images: [
          "assets/images/okro_1.png",
          "assets/images/okro_2.png",
          "assets/images/okro_3.png"
        ],
      ),
      PlantSuggestion(
        imgPath: "assets/images/jute_2.jpg",
        plantName: appText.jute,
        description: appText.jute_desc,
        economicValue: appText.jute_economic_value,
        localValue: appText.jute_local_value,
        habitat: appText.jute_habitat,
        images: [
          "assets/images/jute_1.jpeg",
          "assets/images/jute_2.jpg",
          "assets/images/jute_3.jpg"
        ],
      ),
      PlantSuggestion(
        imgPath: "assets/images/water_leave_1.jpg",
        plantName: appText.waterleaf,
        description: appText.waterleaf_desc,
        economicValue: appText.waterleaf_econo,
        localValue: appText.waterleaf_local,
        habitat: appText.waterleaf_habitat,
        images: [
          "assets/images/water_leave_1.jpg",
          "assets/images/water_leave_2.jpg",
          "assets/images/water_leave_3.jpg",
        ],
      ),
      PlantSuggestion(
        imgPath: "assets/images/pumpkin_1.jpeg",
        plantName: appText.pumpkinLeaves,
        description: appText.pumpkin_desc,
        economicValue: appText.pumpkin_economic_value,
        localValue: appText.pumpkin_local_value,
        habitat: appText.pumpkin_habitat,
        images: [
          "assets/images/pumpkin_1.jpeg",
          "assets/images/pumpkin_2.png",
          "assets/images/pumpkin_3.jpg",
        ],
      ),
    ];

    return SizedBox(
      height: Constants.kheight * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 18.0, // spacing between rows
          crossAxisSpacing: 18.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: suggests.length, // total number of items
        itemBuilder: (context, index) {
          final plants = suggests[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SuggestedPlantDetailPage(
                    imgPath: plants.imgPath,
                    plantName: plants.plantName,
                    plantDesc: plants.description,
                    economicValue: plants.economicValue,
                    localValue: plants.localValue,
                    habitat: plants.habitat,
                    images: plants.images,
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
                              plants.imgPath,
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                  12.ht,
                  Text(
                    plants.plantName,
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
