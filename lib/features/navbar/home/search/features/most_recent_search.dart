import 'package:flutter/material.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';

import '../../models/suggestion.dart';
import '../custom_text_field.dart';
import 'detail_pages/plant_detail_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MostRecentSearch extends StatefulWidget {
  const MostRecentSearch({super.key});

  @override
  State<MostRecentSearch> createState() => _MostRecentSearchState();
}

class _MostRecentSearchState extends State<MostRecentSearch> {
  List<String> plantsDb = [
    "Jute",
    "Pumpkin Leaves",
    "Water leaf",
    "Okro",
    "Hibiscus leaf",
    "flutted pumpkin",
    "bitter leaf",
    "Wild lettuce",
    "scent leaf",
    "yam",
    "cassava",
    "cocoyam",
    "yellow yam",
    "chinese yam",
    "water yam",
    "aerial yam",
  ];
  List<String> filteredPlants = [];
  void filteredItems(String query) {
    setState(() {
      List<String> plants =
          List.generate(plantsDb.length, (index) => plantsDb[index]);
      filteredPlants = plants.where((item) => item.contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              35.ht,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.arrow_back_ios)),
                  20.wt,
                  Text(
                    "Search",
                    style: ApptextStyles.kLabelStyle.copyWith(
                      color: AppColors.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              15.ht,
              CustomTextField(
                prefixIcon: const SizedBox.shrink(),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.tealColor,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: AppColors.blackColor,
                      )),
                ),
                hintText: "Find your plant",
                onChanged: filteredItems,
              ),
              20.ht,
              SizedBox(
                height: Constants.kheight * 0.7,
                width: Constants.kWidth,
                child: ListView.builder(
                    itemCount: filteredPlants.length,
                    itemBuilder: (_, index) {
                      final plant = plantsDb[index];
                      final item = filteredPlants[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (_) => PlantDetailPage(
                            //       imgPath: "${plant.imgPath}",
                            //       plantName: "${plant.plantName}",
                            //       images: plant.images,
                            //       plantDesc: "${plant.description}",
                            //       economicValue: '${plant.economicValue}',
                            //       localValue: '${plant.localValue}',
                            //       habitat: '${plant.habitat}',
                            //     ),
                            //   ),
                            // );
                          },
                          child: Text(
                            item,
                            style: ApptextStyles.kbuttonStyle
                                .copyWith(color: AppColors.blackColor),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
