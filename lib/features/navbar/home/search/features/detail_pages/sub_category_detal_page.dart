// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/sizing.dart';

import 'package:indigenous_plant/database/category_database.dart';
import 'package:indigenous_plant/features/navbar/home/search/features/detail_pages/plant_detail_page.dart';

class SubCategoryDetailPage extends StatelessWidget {
  const SubCategoryDetailPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutralColor,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: Constants.defaultPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gaph20,
                Text(
                  categoryName,
                  style: ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
                ),
                gaph20,
                const CategorySection(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.kheight,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: vegetableSubCategories.length,
          itemBuilder: (_, index) {
            final subCategory = vegetableSubCategories[index];
            return SubCategoryListTile(
                imgPath: "${subCategory.images?[0]}",
                plantName:
                    "${subCategory.botanicalName}/${subCategory.localName}",
                images: subCategory.images?.toList() ?? []);

            //  CategoryWidget(
            //     imgPath: "${subCategory.}",
            //     categoryName:  "${subCategory.botanicalName}/${subCategory.localName}");
          }),
    );
  }
}

class SubCategoryListTile extends StatefulWidget {
  const SubCategoryListTile({
    super.key,
    required this.imgPath,
    required this.plantName,
    required this.images,
  });
  final String imgPath;
  final String plantName;
  final List<String> images;
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
    return GestureDetector(
      onTap: () {
        final images = vegetableSubCategories[index];
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PlantDetailPage(
                imgPath: widget.imgPath,
                plantName: widget.plantName,
                images: widget.images,
                plantDesc: images.desc ?? "",
                economicValue: images.economicValue ?? "",
                localValue: images.localName ?? "",
                habitat: images.habitat ?? ""),
          ),
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
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
