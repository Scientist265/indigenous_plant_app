import 'package:flutter/material.dart';
import 'package:indigenous_plant/database/category_database.dart';
import 'package:indigenous_plant/features/category/widgets/category_widget.dart';
import 'package:indigenous_plant/features/navbar/home/search/features/detail_pages/sub_category_detal_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final appText = AppLocalizations.of(context);
    List<Category> categories = [
      Category(
          categoryName: appText!.vegetables,
          imgPath: "assets/images/veggies.jpg"),
      Category(
          categoryName: appText.tubers, imgPath: "assets/images/tubers.webp"),
      Category(categoryName: appText.crops, imgPath: "assets/images/crops.png"),
      Category(
          categoryName: appText.seeds, imgPath: "assets/images/seeds.webp"),
      Category(
          categoryName: appText.fruits, imgPath: "assets/images/fruits.webp"),
      Category(
          categoryName: appText.leaves, imgPath: "assets/images/leaves.jpeg"),
    ];
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
