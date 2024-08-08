import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/sizing.dart';

import '../../navbar/home/search/features/detail_pages/plant_detail_page.dart';

class SubCategoryListTile extends StatefulWidget {
  const SubCategoryListTile({
    super.key,
    required this.imgPath,
    required this.plantName,
    required this.images,
    required this.desc,
    required this.economicValue,
    required this.localValue,
    required this.habitat,
  });
  final String imgPath;
  final String plantName;
  final List<String> images;
  final String desc, economicValue, localValue, habitat;
  @override
  State<SubCategoryListTile> createState() => _SubCategoryListTileState();
}

class _SubCategoryListTileState extends State<SubCategoryListTile> {
  int index = 0;
  @override
  void setState(VoidCallback fn) {
    index++;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PlantDetailPage(
              imgPath: widget.imgPath,
              plantName: widget.plantName,
              images: widget.images,
              plantDesc: widget.desc,
              economicValue: widget.economicValue,
              localValue: widget.localValue,
              habitat: widget.habitat,
            ),
          ),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 70,
            margin: EdgeInsets.only(bottom: 15.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h),
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
          gapW32,
          Text(
            widget.plantName,
            style: ApptextStyles.kbuttonStyle
                .copyWith(color: AppColors.blackColor),
          )
        ],
      ),
    );
  }
}
