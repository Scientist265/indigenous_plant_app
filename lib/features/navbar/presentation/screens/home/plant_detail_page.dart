import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/widgets/rating_widget.dart';

class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage(
      {super.key,
      required this.imgPath,
      required this.plantName,
      required this.images,
      required this.plantDesc});
  final String imgPath;
  final String plantName;
  final String plantDesc;
  final List<String> images;

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
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (_, index) {
                            final image = images[index];
                            return Container(
                              height: 197.h,
                              width: Constants.kWidth,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.cover,
                              )),
                            );
                          }),
                    ),
                    //TODO: Add dot indicator
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
                        plantName,
                        style:
                            ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                      ),
                      Text(plantDesc),
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
