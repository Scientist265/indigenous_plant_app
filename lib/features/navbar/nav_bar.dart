import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:indigenous_plant/core/constants/app_colors.dart";
import 'package:indigenous_plant/features/navbar/home/home_dart.dart';
import "favourite/favourite.dart";
import "notification/notification.dart";
import "profile/profile.dart";

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FavouritePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        decoration: const BoxDecoration(shape: BoxShape.rectangle),
        child: GNav(
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 500),
          color: Colors.grey[800],
          activeColor: AppColors.realWhiteColor,
          iconSize: 24,
          tabBackgroundColor: AppColors.tealColor,
          // padding: EdgeInsets.symmetric(
          //     horizontal: AppConst.kDefaultPadding, vertical: 20.h),
          tabs: const [
            GButton(
              icon: Icons.home,
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
            ),
            GButton(
              icon: Icons.notifications,
            ),
            GButton(
              icon: Icons.person,
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   final List<Widget> _pagesOption = <Widget>[
//     const HomePage(),
//     const FavouritePage(),
//     const NotificationPage(),
//     const ProfilePage(),

//   ];
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: selectedIndex == 4
//                 ? AppColors.realWhiteColor
//                 : AppColors.greyColor,
//             onTap: (index) {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//             type: BottomNavigationBarType.fixed,
//             currentIndex: selectedIndex,
//             elevation: 0,
//             selectedItemColor: AppColors.realWhiteColor,
//             unselectedItemColor: AppColors.blackColor,
//             // fixedColor: AppColors.kRewardBackgroundColor,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.home_filled,
//                     // ignore: deprecated_member_use
//                     color: selectedIndex == 0 ? AppColors.realWhiteColor : null,
//                   ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                    Icons.favorite_border_outlined,
//                     // ignore: deprecated_member_use
//                     color: selectedIndex == 1 ? AppColors.realWhiteColor : null,
//                   ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.notifications,
//                     // ignore: deprecated_member_use
//                     color: selectedIndex == 2 ? AppColors.realWhiteColor : null,
//                   ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                   Icons.person_4_outlined,
//                     // ignore: deprecated_member_use
//                     color: selectedIndex == 3 ? AppColors.realWhiteColor : null,
//                   ),
//                   label: ""),
             
//             ]),
//         body: _pagesOption[selectedIndex]);
//   }
// }

