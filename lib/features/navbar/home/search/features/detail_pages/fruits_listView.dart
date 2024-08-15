// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/sizing.dart';
import '../../../../../../database/vegetables.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../category/widgets/subcategory_lit_tile.dart';

class FruitListView extends StatelessWidget {
  const FruitListView({super.key, required this.categoryName});
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
    final appText = AppLocalizations.of(context);

    final fruits = Vegetables(
      vegetables: [
        SubVegetables(
          name: appText!.african_star_apple,
          description: appText.african_star_desc,
          economicValue: appText.african_star_eco,
          localValue: appText.african_star_local,
          habitat: appText.african_star_habi,
          vegImages: [
            "assets/images/agbalumo_1.jpeg",
          "assets/images/agbalumo_2.webp",
          "assets/images/agbalumo_3.webp",
          ],
        ),
        SubVegetables(
          name: appText.sugarcane,
          description: appText.sugarcane_desc,
          economicValue: appText.sugarcane_econ,
          localValue: appText.sugar_cane_loca,
          habitat: appText.sugarcane_habit,
          vegImages: [
            "assets/images/sugarcane_1.jpeg",
            "assets/images/sugarcane_2.jpeg",
            "assets/images/sugarcane_3.jpeg",
          ],
        ),
       
      ],
      categoryName: appText.vegetables,
      imgPath: "assets/images/veggies.jpg",
    );

    return SizedBox(
      height: Constants.kheight,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: fruits.vegetables.length,
          itemBuilder: (_, index) {
            final subCategory = fruits.vegetables[index];
            return SubCategoryListTile(
              imgPath: subCategory.vegImages[0],
              plantName: subCategory.name,
              images: subCategory.vegImages,
              desc: subCategory.description,
              economicValue: subCategory.economicValue,
              localValue: subCategory.localValue,
              habitat: subCategory.habitat,
            );
          }),
    );
  }
}
