import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/sizing.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/auth/providers/auth_provider.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  Future<void> signout(BuildContext context) async {
    await ref.read(authProvider).signOut();
    Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
  }

  final _auth = FirebaseAuth.instance;
  final currUser = FirebaseAuth.instance.currentUser!;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gaph32,
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.darkGreyColor,
                    child: Center(
                      child: Text(
                        "HA",
                        style: ApptextStyles.kHeaderStyle,
                      ),
                    ),
                  ),
                ),
                gaph20,
                Text("Full Name", style: ApptextStyles.kLabelStyle),
                gaph4,
                Container(
                  width: Constants.kWidth,
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(12.h),
                      border: Border.all(color: AppColors.tealColor)),
                  child: Text(
                    "Hammed Ibraheem Omowumi",
                    style: ApptextStyles.kPrimaryStyle,
                  ),
                ),
                gaph20,
                Text("Email", style: ApptextStyles.kLabelStyle),
                gaph4,
                Container(
                  width: Constants.kWidth,
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(12.h),
                      border: Border.all(color: AppColors.tealColor)),
                  child: Text(
                    "${currUser.email}",
                    style: ApptextStyles.kPrimaryStyle,
                  ),
                ),
                gaph64,
                InkWell(
                  onTap: () {
                    signout(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Logout",
                        style: ApptextStyles.kbuttonStyle.copyWith(
                          color: Colors.redAccent,
                        ),
                      ),
                      gapW16,
                      const Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfilePage();
  }
}
