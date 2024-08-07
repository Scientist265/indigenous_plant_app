import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/config/translation_api.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';

class LanguageTile extends ConsumerWidget {
  const LanguageTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isChecked = ref.watch(checkboxProvider);
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            trailing: Consumer(builder: (context, ref, _) {
              return Checkbox(
                value: isChecked,
                onChanged: ((newValue) async {
                  ref.read(checkboxProvider.notifier).state = newValue!;
                  await ref.read(localeProvider.notifier).switchLocale("yo");
                }),
              );
            }),
            title: Text(
              "System Language",
              style: ApptextStyles.kbuttonStyle
                  .copyWith(color: AppColors.blackColor),
            ),
            subtitle: Text(
              isChecked == true ? "English" : "Yoruba",
              style: ApptextStyles.kPrimaryStyle.copyWith(
                color: AppColors.darkGreyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
