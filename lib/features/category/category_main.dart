import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/database/category_database.dart';
import 'package:indigenous_plant/features/category/widgets/category_widget.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';
import 'package:indigenous_plant/features/navbar/home/search/features/detail_pages/sub_category_detal_page.dart';

import '../../config/text_styles.dart';
import '../../core/constants/app_colors.dart';
import '../navbar/home/search/features/detail_pages/plant_detail_page.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: Constants.kheight * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 18.0, // spacing between rows
          crossAxisSpacing: 18.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: categories.length, // total number of items
        itemBuilder: (context, index) {
          final category = categories[index];
          // final veggy = subCategories[index];
          // final plant = plantSuggestions[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SubCategoryDetailPage(
                      categoryName: category.categoryName),
                ),
              );
            },
            child: CategoryWidget(
              imgPath: category.imgPath,
              categoryName: category.categoryName,
            ),
          );
        },
      ),
    );
  }
}
