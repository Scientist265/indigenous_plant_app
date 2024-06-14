import "package:flutter/material.dart";
import 'package:indigenous_plant/features/home/home_dart.dart';
import "package:indigenous_plant/features/navbar/custom_nav_bar.dart";

import "../../features/favourite/favourite.dart";
import "../../features/notification/notification.dart";
import "../../features/profile/profile.dart";

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
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
      bottomNavigationBar: CustomNavBar(
          idx: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
    );
  }
}
