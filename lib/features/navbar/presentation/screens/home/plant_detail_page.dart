import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/widgets/rating_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PlantDetailPage extends StatefulWidget {
  const PlantDetailPage(
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
  State<PlantDetailPage> createState() => _PlantDetailPageState();
}

class _PlantDetailPageState extends State<PlantDetailPage> {
  final int _initPosition = 0;
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
                        itemCount: widget.images.length,
                        itemBuilder: (_, index) {
                          final image = widget.images[index];
                          return Container(
                            height: 197.h,
                            width: Constants.kWidth,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(image),
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
                      Text(
                        widget.plantName,
                        style:
                            ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                      ),
                      Text(widget.plantDesc),
                      16.ht,
                      Text(
                        "Economic Value",
                        style:
                            ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                      ),
                      16.ht,
                      Text(widget.economicValue),
                      16.ht,
                      Text(
                        "Local Value",
                        style:
                            ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                      ),
                      16.ht,
                      Text(widget.localValue),
                      16.ht,
                      Text(
                        "Habitat",
                        style:
                            ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                      ),
                      16.ht,
                      Text(widget.habitat)
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
