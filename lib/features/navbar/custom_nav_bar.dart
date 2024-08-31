import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../shared/constants/app_colors.dart';

class CustomNavBar extends StatefulWidget {
  final int idx;
  final Function(int)? onTabChange;
  const CustomNavBar({
    super.key,
    required this.idx,
    this.onTabChange,
  });

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: GNav(
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 500),
        color: Colors.grey[800],
        activeColor: AppColors.realWhiteColor,
        iconSize: 24,
        tabBackgroundColor: AppColors.tealColor,
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
        selectedIndex: widget.idx,
        onTabChange: widget.onTabChange,
      ),
    );
  }
}
