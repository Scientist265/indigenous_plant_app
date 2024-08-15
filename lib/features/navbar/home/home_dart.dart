import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/home/search/category_search.dart';
import 'package:indigenous_plant/features/navbar/home/widgets/suggest_grid_view.dart';
import 'package:indigenous_plant/features/navbar/home/search/features/most_recent_search.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:indigenous_plant/features/navbar/profile/profile.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const routeName = "/home-screen";

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer(BuildContext context) {
    scaffoldKey.currentState!.openDrawer(); // Open the drawer
  }

  @override
  Widget build(BuildContext context) {
    final appText = AppLocalizations.of(context);
    return Container(
      color: AppColors.neutralColor,
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: SingleChildScrollView(
            child: Padding(
              padding: Constants.defaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header Search, Drawer, Dropmenu

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const CategorySearch(
                                imgPath: '',
                                categoryName: '',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 35,
                          width: Constants.kWidth * .75,
                          decoration: BoxDecoration(
                              color: AppColors.realWhiteColor,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: AppColors.blackColor, width: .6),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: .5,
                                  spreadRadius: .2,
                                )
                              ]),
                        ),
                      ),
                      15.wt,
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            //TODO: change to Drawer if possible
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ProfilePage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.person,
                            size: 40,
                          )),

                      // CustomTextField(),
                    ],
                  ),
                  Text(
                    appText!.welcome,
                    style: ApptextStyles.kHeaderStyle,
                  ),
                  RichText(
                    text: TextSpan(
                      text: appText.to_the,
                      style: ApptextStyles.kHeaderStyle,
                      children: [
                        TextSpan(
                          text: appText.welcome_desc,
                          style: ApptextStyles.kHeaderStyle.copyWith(
                            color: AppColors.tealColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.ht,
                  Text(
                    appText.intro,
                    style: ApptextStyles.kPrimaryStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGreyColor),
                  ),
                  10.ht,
                  Container(
                    height: 137,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                        color: AppColors.darkGreyColor.withOpacity(0.7),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 137,
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset("assets/images/splash_image.png"),
                        ),
                        10.wt,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              appText.there_are,
                              style: ApptextStyles.kLabelStyle
                                  .copyWith(color: AppColors.blackColor),
                            ),
                            Text(
                              "${appText.sixty} ${appText.plants}",
                              style: ApptextStyles.kHeaderStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            6.ht,
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const MostRecentSearch(),
                                  ),
                                );
                              },
                              child: Card(
                                color: AppColors.tealColor,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 5.h),
                                  child: Text(
                                    appText.find_yours,
                                    style: ApptextStyles.kbuttonStyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  20.ht,
                  Text(
                    appText.plant_u_might_love,
                    style: ApptextStyles.kHeaderStyle,
                  ),
                  const SuggestedGridView(),
                ],
              ),
            ),
          ),
          //  drawer: const Drawer(),
        ),
      ),
    );
  }
}
