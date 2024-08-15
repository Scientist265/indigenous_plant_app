import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';
import 'package:indigenous_plant/features/navbar/home/widgets/expansion_widget.dart';
import 'package:indigenous_plant/features/navbar/home/widgets/rating_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../widgets/preview_image_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuggestedPlantDetailPage extends StatefulWidget {
  const SuggestedPlantDetailPage(
      {super.key,
      required this.imgPath,
      required this.plantName,
      required this.plantDesc,
      required this.economicValue,
      required this.localValue,
      required this.habitat,
      required this.images});
  final String imgPath;
  final String plantName;
  final String plantDesc;
  final List<String> images;
  final String economicValue;
  final String localValue;
  final String habitat;

  @override
  State<SuggestedPlantDetailPage> createState() =>
      _SuggestedPlantDetailPageState();
}

class _SuggestedPlantDetailPageState extends State<SuggestedPlantDetailPage> {
  int _currentPage = 0;
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
    return Container(
      color: AppColors.neutralColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.neutralColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: Constants.kheight * 0.25,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: suggests.length,
                        itemBuilder: (_, index) {
                          final plant = suggests[index];
                          return GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => PreviewImage(
                                      imagePath:
                                          widget.images.elementAt(index)));
                            },
                            child: Container(
                              height: 197.h,
                              width: Constants.kWidth,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage(widget.images.elementAt(index)),
                                fit: BoxFit.cover,
                              )),
                            ),
                          );
                        },
                        onPageChanged: (int value) {
                          setState(() {
                            _currentPage = value;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      left: Constants.kWidth * 0.5,
                      bottom: 6,
                      child: SizedBox(
                        height: 20,
                        child: Center(
                            child: DotsIndicator(
                          dotsCount: 3,
                          position: _currentPage,
                          decorator: const DotsDecorator(
                            spacing: EdgeInsets.all(2),
                            size: Size(9.0, 9.0), // Size of the dots
                            activeSize:
                                Size(10.0, 10.0), // Size of the active dot
                            color: AppColors.neutralColor, // Inactive dot color
                            activeColor:
                                AppColors.blackColor, // Active dot color
                          ),
                        )),
                      ),
                    )
                  ],
                ),
                16.ht,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Card(
                            color: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Text(
                                "New",
                                style: ApptextStyles.kbuttonStyle,
                              ),
                            ),
                          ),
                          const RatingWidget(),
                        ],
                      ),
                      16.ht,
                      ExpansionDetailWidget(
                          title: appText!.plant_name,
                          info: widget.plantName,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: appText.description,
                          info: widget.plantDesc,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: appText.economic_value,
                          info: widget.economicValue,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: appText.local_value,
                          info: widget.localValue,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: appText.habitat,
                          info: widget.habitat,
                          imgPath: widget.imgPath),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
