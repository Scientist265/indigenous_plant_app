class PlantSuggestion {
  final String? imgPath;
  final String? plantName;
  final List<String> images;
  final String? description;
  final String? economicValue;
  final String? localValue;
  final String? habitat;
  PlantSuggestion(
    this.imgPath,
    this.plantName,
    this.description,
    this.economicValue,
    this.localValue,
    this.habitat, {
    required this.images,
  });
}

List<PlantSuggestion> plantSuggestions = [
  PlantSuggestion(
    "assets/images/okro.png",
    "Ilá",
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
    "Akoko",
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
      "assets/images/akoko.png",
      "assets/images/lapalapa.png",
      "assets/images/kankandoro.png"
    ],
  ),
  PlantSuggestion(
    "assets/images/eyin_elebe.jpeg",
    "Eyin elebe",
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
    "Ilá",
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
