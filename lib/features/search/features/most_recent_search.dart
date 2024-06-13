import 'package:flutter/material.dart';
import 'package:indigenous_plant/core/config/text_styles.dart';
import 'package:indigenous_plant/shared/constants/app_colors.dart';
import 'package:indigenous_plant/shared/constants/extension.dart';
import 'package:indigenous_plant/shared/reusable_widget/round_button.dart';
import 'package:indigenous_plant/features/home/models/suggestion.dart';
import 'package:indigenous_plant/features/home/widgets/suggest_grid_view.dart';
import 'package:indigenous_plant/features/search/category_search.dart';

import '../custom_text_field.dart';

class MostRecentSearch extends StatefulWidget {
  const MostRecentSearch({super.key});

  @override
  State<MostRecentSearch> createState() => _MostRecentSearchState();
}

class _MostRecentSearchState extends State<MostRecentSearch> {
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
                  const Icon(Icons.arrow_back_ios),
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
              const SuggestedGridView(),
              20.ht,
              RoundButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const CategorySearch()),
                    );
                  },
                  label: "See more"),
            ],
          ),
        ),
      ),
    );
  }
}
