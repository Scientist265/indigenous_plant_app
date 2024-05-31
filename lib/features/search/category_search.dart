import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/models/suggestion.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/plant_detail_page.dart';

import '../../core/constants/app_colors.dart';
import 'custom_text_field.dart';

class CategorySearch extends StatefulWidget {
  const CategorySearch({super.key});

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            35.ht,
            Text(
              "Look for Plant",
              style: ApptextStyles.kHeaderStyle,
            ),
            15.ht,
            CustomTextField(
              hintText: "Find your plant",
              onChanged: filteredItems,
            ),
            6.ht,
            Text(
              "Plant Category",
              style: ApptextStyles.kHeaderStyle.copyWith(fontSize: 20),
            ),
            10.ht,
            Expanded(
                child: ListView.builder(
                    itemCount: filteredPlants.length,
                    itemBuilder: (_, index) {
                      final plant = plantSuggestions[index];
                      final item = filteredPlants[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => PlantDetailPage(
                                  imgPath: "${plant.imgPath}",
                                  plantName: "${plant.plantName}",
                                  images: plant.images,
                                  plantDesc: "${plant.description}",
                                  economicValue: '${plant.economicValue}',
                                  localValue: '${plant.localValue}',
                                  habitat: '${plant.habitat}',
                                ),
                              ),
                            );
                          },
                          child: Text(
                            item,
                            style: ApptextStyles.kbuttonStyle
                                .copyWith(color: AppColors.blackColor),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
