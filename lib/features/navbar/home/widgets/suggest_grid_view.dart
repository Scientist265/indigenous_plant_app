import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/features/navbar/home/models/suggestion.dart';

import '../search/features/detail_pages/suggested_plant_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuggestedGridView extends StatelessWidget {
  const SuggestedGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final appText = AppLocalizations.of(context);

    List<PlantSuggestion> plantSuggestions = [
      PlantSuggestion(
        "assets/images/okro.png",
        appText!.suggested_first_plant,
        """ Ilá ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní Ilá. Ní Yorùbá, a tún lè pè ní "Ilá". Ilá jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi Ilá ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò Ilá náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé Ilá sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná Ilá, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí Ilá jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè Ilá. Obè Ilá jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú Ilá àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ilá tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo Ilá fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí Ilá fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
        """" Ilá máa ń ṣe agbára fún ètò-òṣèlú nígbà tí wọ́n bá fi hàn nínú ọjà ìṣòwò òkèèrè. Àwọn ilẹ̀ bí Nàìjíríà, Gàna, àti àwọn ilé iṣẹ́ tó wọ́pọ̀ máa ń fojú sókè sí gbígba Ilá nítorí iye tó wúlò tí ó ní nínú ọjà ilé àti òkèèrè.""",
        """ Ilá máa ń ran nípa dídi ìtẹ̀lé ẹjẹ náà mú kí o dín inú ara tó ní súgà. """,
        """  Òjò gbòòrò: Ilá fẹ́ràn ibi tí ó gbona, tí ó sì ní òjò gbòòrò. Ó dára jùlọ nígbà tí ìgbà òtútù kò sí. Òjò tó dara fún Ilá ní láàrin 75°F àti 95°F (24°C sí 35°C).
Aìkọ̀tútù: Ilá kì í fẹ́ ibi tí òtútù máa ń wà. Ilá máa ń gbòòrò nínú ibi tí ìgbà gbígbóná rẹ̀ pẹ́.Ìmọ̀lẹ̀ òrùn púpọ̀: Ilá fẹ́ràn ìmọ̀lẹ̀ òrùn fún wakati mẹ̀fà sí mẹ̀jọ (6-8) ní ọjọ́ kan. Ìmọ̀lẹ̀ òrùn tí ó tó kì í ṣe pàtàkì fún igbó àwọn àtẹgùn Ilá.""",
        images: [
          "assets/images/okro_1.png",
          "assets/images/okro_2.png",
          "assets/images/okro_3.png"
        ],
      ),
      PlantSuggestion(
        "assets/images/akoko.jpeg",
        appText.suggested_second_plant,
        """ Ilá ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní Ilá. Ní Yorùbá, a tún lè pè ní "Ilá". Ilá jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi Ilá ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò Ilá náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé Ilá sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná Ilá, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí Ilá jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè Ilá. Obè Ilá jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú Ilá àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ilá tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo Ilá fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí Ilá fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
        """" Ilá máa ń ṣe agbára fún ètò-òṣèlú nígbà tí wọ́n bá fi hàn nínú ọjà ìṣòwò òkèèrè. Àwọn ilẹ̀ bí Nàìjíríà, Gàna, àti àwọn ilé iṣẹ́ tó wọ́pọ̀ máa ń fojú sókè sí gbígba Ilá nítorí iye tó wúlò tí ó ní nínú ọjà ilé àti òkèèrè.""",
        """ Ilá máa ń ran nípa dídi ìtẹ̀lé ẹjẹ náà mú kí o dín inú ara tó ní súgà. """,
        """  Òjò gbòòrò: Ilá fẹ́ràn ibi tí ó gbona, tí ó sì ní òjò gbòòrò. Ó dára jùlọ nígbà tí ìgbà òtútù kò sí. Òjò tó dara fún Ilá ní láàrin 75°F àti 95°F (24°C sí 35°C).
Aìkọ̀tútù: Ilá kì í fẹ́ ibi tí òtútù máa ń wà. Ilá máa ń gbòòrò nínú ibi tí ìgbà gbígbóná rẹ̀ pẹ́.Ìmọ̀lẹ̀ òrùn púpọ̀: Ilá fẹ́ràn ìmọ̀lẹ̀ òrùn fún wakati mẹ̀fà sí mẹ̀jọ (6-8) ní ọjọ́ kan. Ìmọ̀lẹ̀ òrùn tí ó tó kì í ṣe pàtàkì fún igbó àwọn àtẹgùn Ilá.""",
        images: [
          "assets/images/akoko.jpeg",
          "assets/images/lapalapa.jpeg",
          "assets/images/kankandoro.jpeg"
        ],
      ),
      PlantSuggestion(
        "assets/images/eyin_elebe.jpeg",
        appText.suggested_third_plant,
        """ Ilá ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní Ilá. Ní Yorùbá, a tún lè pè ní "Ilá". Ilá jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi Ilá ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò Ilá náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé Ilá sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná Ilá, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí Ilá jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè Ilá. Obè Ilá jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú Ilá àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ilá tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo Ilá fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí Ilá fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
        """" Ilá máa ń ṣe agbára fún ètò-òṣèlú nígbà tí wọ́n bá fi hàn nínú ọjà ìṣòwò òkèèrè. Àwọn ilẹ̀ bí Nàìjíríà, Gàna, àti àwọn ilé iṣẹ́ tó wọ́pọ̀ máa ń fojú sókè sí gbígba Ilá nítorí iye tó wúlò tí ó ní nínú ọjà ilé àti òkèèrè.""",
        """ Ilá máa ń ran nípa dídi ìtẹ̀lé ẹjẹ náà mú kí o dín inú ara tó ní súgà. """,
        """  Òjò gbòòrò: Ilá fẹ́ràn ibi tí ó gbona, tí ó sì ní òjò gbòòrò. Ó dára jùlọ nígbà tí ìgbà òtútù kò sí. Òjò tó dara fún Ilá ní láàrin 75°F àti 95°F (24°C sí 35°C).
Aìkọ̀tútù: Ilá kì í fẹ́ ibi tí òtútù máa ń wà. Ilá máa ń gbòòrò nínú ibi tí ìgbà gbígbóná rẹ̀ pẹ́.Ìmọ̀lẹ̀ òrùn púpọ̀: Ilá fẹ́ràn ìmọ̀lẹ̀ òrùn fún wakati mẹ̀fà sí mẹ̀jọ (6-8) ní ọjọ́ kan. Ìmọ̀lẹ̀ òrùn tí ó tó kì í ṣe pàtàkì fún igbó àwọn àtẹgùn Ilá.""",
        images: [
          "assets/images/eyin_elebe.jpeg",
          "assets/images/okro.png",
          "assets/images/okro.png"
        ],
      ),
      PlantSuggestion(
        "assets/images/okro.png",
        appText.suggested_fourth_plant,
        """ Ilá ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní Ilá. Ní Yorùbá, a tún lè pè ní "Ilá". Ilá jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi Ilá ń dàgbà gà tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò Ilá náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé Ilá sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná Ilá, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí Ilá jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè Ilá. Obè Ilá jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú Ilá àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ilá tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo Ilá fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí Ilá fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
        """" Ilá máa ń ṣe agbára fún ètò-òṣèlú nígbà tí wọ́n bá fi hàn nínú ọjà ìṣòwò òkèèrè. Àwọn ilẹ̀ bí Nàìjíríà, Gàna, àti àwọn ilé iṣẹ́ tó wọ́pọ̀ máa ń fojú sókè sí gbígba Ilá nítorí iye tó wúlò tí ó ní nínú ọjà ilé àti òkèèrè.""",
        """ Ilá máa ń ran nípa dídi ìtẹ̀lé ẹjẹ náà mú kí o dín inú ara tó ní súgà. """,
        """  Òjò gbòòrò: Ilá fẹ́ràn ibi tí ó gbona, tí ó sì ní òjò gbòòrò. Ó dára jùlọ nígbà tí ìgbà òtútù kò sí. Òjò tó dara fún Ilá ní láàrin 75°F àti 95°F (24°C sí 35°C).
Aìkọ̀tútù: Ilá kì í fẹ́ ibi tí òtútù máa ń wà. Ilá máa ń gbòòrò nínú ibi tí ìgbà gbígbóná rẹ̀ pẹ́.Ìmọ̀lẹ̀ òrùn púpọ̀: Ilá fẹ́ràn ìmọ̀lẹ̀ òrùn fún wakati mẹ̀fà sí mẹ̀jọ (6-8) ní ọjọ́ kan. Ìmọ̀lẹ̀ òrùn tí ó tó kì í ṣe pàtàkì fún igbó àwọn àtẹgùn Ilá.""",
        images: [
          "assets/images/okro.png",
          "assets/images/okro.png",
          "assets/images/okro.png"
        ],
      ),
    ];

    return SizedBox(
      height: Constants.kheight * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 18.0, // spacing between rows
          crossAxisSpacing: 18.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: plantSuggestions.length, // total number of items
        itemBuilder: (context, index) {
          final plants = plantSuggestions[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SuggestedPlantDetailPage(
                    imgPath: "${plants.imgPath}",
                    plantName: "${plants.plantName}",
                    plantDesc: "${plants.description}",
                    economicValue: '${plants.economicValue}',
                    localValue: '${plants.localValue}',
                    habitat: '${plants.habitat}',
                    images: plants.images,
                  ),
                ),
              );
            },
            child: Container(
              height: 124,
              width: 128,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.neutralColor,
                  borderRadius: BorderRadius.circular(6.h)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 110,
                    width: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            image: AssetImage(
                              "${plants.imgPath}",
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                  12.ht,
                  Text(
                    "${plants.plantName}",
                    style: ApptextStyles.kLabelStyle,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
