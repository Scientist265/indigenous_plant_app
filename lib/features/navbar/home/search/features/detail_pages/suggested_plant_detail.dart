import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/database/category_database.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';
import 'package:indigenous_plant/features/navbar/home/widgets/expansion_widget.dart';
import 'package:indigenous_plant/features/navbar/home/widgets/rating_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class SuggestedPlantDetailPage extends StatefulWidget {
  const SuggestedPlantDetailPage(
      {super.key,
      required this.imgPath,
      required this.plantName,
      required this.images,
      required this.plantDesc,
      required this.economicValue,
      required this.localValue,
      required this.habitat});
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
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          final plant = plantSuggestions[index];
                          final image = plant.images;
                          return Container(
                            height: 197.h,
                            width: Constants.kWidth,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(image[index]),
                              fit: BoxFit.cover,
                            )),
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
                          dotsCount: widget.images.length,
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
                          title: "Name",
                          info: widget.plantName,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: "Description",
                          info: widget.plantDesc,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: "Economic Value",
                          info: widget.economicValue,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: "Local Value",
                          info: widget.localValue,
                          imgPath: widget.imgPath),
                      16.ht,
                      ExpansionDetailWidget(
                          title: "Habitat",
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
