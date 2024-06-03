import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:indigenous_plant/core/constants/extension.dart";
import "package:indigenous_plant/features/navbar/home/home_dart.dart";

import "../../../../core/constants/constants.dart";
import "../../../../core/utils/utils.dart";
import "../../../../core/widgets/round_button.dart";
import "../../providers/auth_provider.dart";

class VerifyEmailScreen extends ConsumerWidget {
  const VerifyEmailScreen({super.key});
  static const routeName = "/verify-screen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
              onPressed: () async {
                await ref.read(authProvider).verifyEmail().then((value) {
                  if (value == null) {
                    showToastMessage(
                        text: "Email Verification sent to your email");
                  }
                });
              },
              label: "Verify Email",
            ),
            20.ht,
            RoundButton(
              onPressed: () async {
                await FirebaseAuth.instance.currentUser!.reload();

                final emailVerified =
                    FirebaseAuth.instance.currentUser!.emailVerified;

                if (emailVerified) {
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushNamed(HomePage.routeName);
                } else {
                  showToastMessage(text: "Can't refresh");
                }

                // Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              label: "Refresh",
            ),
            20.ht,
            RoundButton(
              onPressed: () {
                ref.read(authProvider).signOut();
              },
              label: "Change Email",
            ),
          ],
        ),
      ),
    );
  }
}
