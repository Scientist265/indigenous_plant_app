import 'package:flutter/material.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/category/category_main.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategorySearch extends StatefulWidget {
  const CategorySearch(
      {super.key, required this.categoryName, required this.imgPath});
  static const routeName = "/category-search";
  final String categoryName;
  final String imgPath;

  @override
  State<CategorySearch> createState() => _CategorySearchState();
}

class _CategorySearchState extends State<CategorySearch> {


  //TODO : Create FilteredCategory
  List<String> filteredPlants = [];
  void filteredItems(String query) {
    setState(() {
      List<String> plants = List.generate(plantSuggestions.length,
          (index) => plantSuggestions[index].plantName.toString());
      filteredPlants = plants.where((item) => item.contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appText = AppLocalizations.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   appText!.look_for_plant,
            //   style: ApptextStyles.kHeaderStyle,
            // ),
            35.ht,
            // CustomTextField(
            //   hintText: appText.find_your_plant,
            //   onChanged: filteredItems,
            // ),
            6.ht,
            Text(
              appText!.plant_category,
              style: ApptextStyles.kHeaderStyle.copyWith(fontSize: 22),
            ),

            const CategoryGridView()
            // Expanded(
            //     child: ListView.builder(
            //         itemCount: filteredPlants.length,
            //         itemBuilder: (_, index) {
            //           final plant = plantSuggestions[index];
            //           final item = filteredPlants[index];
            //           return Padding(
            //             padding: const EdgeInsets.only(bottom: 12.0),
            //             child: GestureDetector(
            //               onTap: () {
            //                 Navigator.of(context).push(
            //                   MaterialPageRoute(
            //                     builder: (_) => PlantDetailPage(
            //                       imgPath: "${plant.imgPath}",
            //                       plantName: "${plant.plantName}",
            //                       images: plant.images,
            //                       plantDesc: "${plant.description}",
            //                       economicValue: '${plant.economicValue}',
            //                       localValue: '${plant.localValue}',
            //                       habitat: '${plant.habitat}',
            //                     ),
            //                   ),
            //                 );
            //               },
            //               child: Text(
            //                 item,
            //                 style: ApptextStyles.kbuttonStyle
            //                     .copyWith(color: AppColors.blackColor),
            //               ),
            //             ),
            //           );
            //         }))
          ],
        ),
      ),
    );
  }
}
