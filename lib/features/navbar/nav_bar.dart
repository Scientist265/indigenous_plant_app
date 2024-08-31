// import "package:flutter/material.dart";
// import 'package:indigenous_plant/features/home/home_dart.dart';
// import "package:indigenous_plant/features/navbar/custom_nav_bar.dart";

// import "../favourite/favourite.dart";
// import "../notification/notification.dart";
// import "../profile/profile.dart";

// class RootApp extends StatefulWidget {
//   const RootApp({super.key});

//   @override
//   State<RootApp> createState() => _RootAppState();
// }

// class _RootAppState extends State<RootApp> {
//   int _selectedIndex = 0;
//   final List<Widget> _widgetOptions = <Widget>[
//     const HomePage(),
//     const FavouritePage(),
//     const NotificationPage(),
//     const ProfilePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CustomNavBar(
//           idx: _selectedIndex,
//           onTabChange: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           }),
//       body: _widgetOptions.elementAt(_selectedIndex),
//     );
//   }
// }



// // class BottomNavBar extends StatefulWidget {
// //   const BottomNavBar({super.key});

// //   @override
// //   State<BottomNavBar> createState() => _BottomNavBarState();
// // }

// // class _BottomNavBarState extends State<BottomNavBar> {
// //   final List<Widget> _pagesOption = <Widget>[
// //     const HomePage(),
// //     const FavouritePage(),
// //     const NotificationPage(),
// //     const ProfilePage(),

// //   ];
// //   int selectedIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         bottomNavigationBar: BottomNavigationBar(
// //             backgroundColor: selectedIndex == 4
// //                 ? AppColors.realWhiteColor
// //                 : AppColors.greyColor,
// //             onTap: (index) {
// //               setState(() {
// //                 selectedIndex = index;
// //               });
// //             },
// //             type: BottomNavigationBarType.fixed,
// //             currentIndex: selectedIndex,
// //             elevation: 0,
// //             selectedItemColor: AppColors.realWhiteColor,
// //             unselectedItemColor: AppColors.blackColor,
// //             // fixedColor: AppColors.kRewardBackgroundColor,
// //             items: [
// //               BottomNavigationBarItem(
// //                   icon: Icon(
// //                     Icons.home_filled,
// //                     // ignore: deprecated_member_use
// //                     color: selectedIndex == 0 ? AppColors.realWhiteColor : null,
// //                   ),
// //                   label: ""),
// //               BottomNavigationBarItem(
// //                   icon: Icon(
// //                    Icons.favorite_border_outlined,
// //                     // ignore: deprecated_member_use
// //                     color: selectedIndex == 1 ? AppColors.realWhiteColor : null,
// //                   ),
// //                   label: ""),
// //               BottomNavigationBarItem(
// //                   icon: Icon(
// //                     Icons.notifications,
// //                     // ignore: deprecated_member_use
// //                     color: selectedIndex == 2 ? AppColors.realWhiteColor : null,
// //                   ),
// //                   label: ""),
// //               BottomNavigationBarItem(
// //                   icon: Icon(
// //                   Icons.person_4_outlined,
// //                     // ignore: deprecated_member_use
// //                     color: selectedIndex == 3 ? AppColors.realWhiteColor : null,
// //                   ),
// //                   label: ""),
             
// //             ]),
// //         body: _pagesOption[selectedIndex]);
// //   }
// // }

