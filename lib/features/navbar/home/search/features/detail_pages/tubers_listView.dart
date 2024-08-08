// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/sizing.dart';
import '../../../../../../database/vegetables.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../category/widgets/subcategory_lit_tile.dart';

class TuberSubCategory extends StatelessWidget {
  const TuberSubCategory({super.key, required this.categoryName});
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

    final vegetable = Vegetables(
      vegetables: [
        SubVegetables(
          name: appText!.yam,
          description: appText.jute_desc,
          economicValue: appText.jute_economic_value,
          localValue: appText.jute_local_value,
          habitat: appText.jute_habitat,
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.taro,
          description: appText.pumpkin_desc,
          economicValue: appText.pumpkin_economic_value,
          localValue: appText.pumpkin_local_value,
          habitat: appText.pumpkin_habitat,
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.cocoyam,
          description: appText.waterleaf_desc,
          economicValue: appText.pumpkin_economic_value,
          localValue: appText.waterleaf_local,
          habitat: appText.waterleaf_habitat,
          vegImages: [
            "assets/images/coco_y_1.jpg",
            "assets/images/coco_y_2.jpg",
            "assets/images/coco_y_3.jpg",
          ],
        ),
        SubVegetables(
          name: appText.aerial_Yam,
          description:
              "A leafy green vegetable with a slightly slimy texture when cooked.",
          economicValue: "economicValue",
          localValue: "localValue",
          habitat: "habitat",
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.cassava,
          description: appText.jute_desc,
          economicValue: appText.jute_economic_value,
          localValue: appText.jute_local_value,
          habitat: appText.jute_habitat,
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.chinese_Yam,
          description: appText.pumpkin_desc,
          economicValue: appText.pumpkin_economic_value,
          localValue: appText.pumpkin_local_value,
          habitat: appText.pumpkin_habitat,
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.yellow_Yam,
          description: appText.waterleaf_desc,
          economicValue: appText.pumpkin_economic_value,
          localValue: appText.waterleaf_local,
          habitat: appText.waterleaf_habitat,
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.sweet_Potato,
          description:
              "A leafy green vegetable with a slightly slimy texture when cooked.",
          economicValue: "economicValue",
          localValue: "localValue",
          habitat: "habitat",
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.white_Yam,
          description:
              "A leafy green vegetable with a slightly slimy texture when cooked.",
          economicValue: "economicValue",
          localValue: "localValue",
          habitat: "habitat",
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
          ],
        ),
        SubVegetables(
          name: appText.water_Yam,
          description:
              "A leafy green vegetable with a slightly slimy texture when cooked.",
          economicValue: "economicValue",
          localValue: "localValue",
          habitat: "habitat",
          vegImages: [
            "assets/images/casava_1.webp",
            "assets/images/casava_2.jpeg",
            "assets/images/casava_3.jpeg",
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
          itemCount: vegetable.vegetables.length,
          itemBuilder: (_, index) {
            final subCategory = vegetable.vegetables[index];
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
