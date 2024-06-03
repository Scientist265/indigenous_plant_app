import 'package:flutter/material.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/features/category/widgets/category_widget.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.kheight * 0.3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: plantSuggestions.length,
          itemBuilder: (_, index) {
            final category = plantSuggestions[index];
            return CategoryWidget(
                imgPath: "${category.imgPath}",
                categoryName: "${category.plantName}");
          }),
    );
  }
}
