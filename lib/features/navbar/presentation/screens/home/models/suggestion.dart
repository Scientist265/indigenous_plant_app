class PlantSuggestion {
  final String? imgPath;
  final String? plantName;
  final List<String> images;
  final String? description;
  PlantSuggestion(
    this.imgPath,
    this.plantName,
    this.description, {
    required this.images,
  });
}

List<PlantSuggestion> plantSuggestions = [
  PlantSuggestion(
    "assets/images/okro.png",
    "Okro",
    """ Òkìrò̀ ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní òkìrò̀. Ní Yorùbá, a tún lè pè ní "ìlà". Ìlà jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi òkìrò̀ ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò ìlà náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé ìlà sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná ìlà, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí ìlà jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè ìlà. Obè ìlà jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú ìlà àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ìlà tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo ìlà fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí ìlà fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
    images: [
      "assets/images/okro.png",
      "assets/images/kankandoro.jpeg",
      "assets/images/akoko.jpeg"
    ],
  ),
  PlantSuggestion(
    "assets/images/akoko.jpeg",
    "Akoko",
    """ Òkìrò̀ ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní òkìrò̀. Ní Yorùbá, a tún lè pè ní "ìlà". Ìlà jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi òkìrò̀ ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò ìlà náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé ìlà sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná ìlà, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí ìlà jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè ìlà. Obè ìlà jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú ìlà àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ìlà tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo ìlà fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí ìlà fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
    images: [
      "assets/images/akoko.png",
      "assets/images/lapalapa.png",
      "assets/images/kankandoro.png"
    ],
  ),
  PlantSuggestion(
    "assets/images/eyin_elebe.jpeg",
    "Eyin elebe",
    """ Òkìrò̀ ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní òkìrò̀. Ní Yorùbá, a tún lè pè ní "ìlà". Ìlà jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi òkìrò̀ ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò ìlà náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé ìlà sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná ìlà, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí ìlà jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè ìlà. Obè ìlà jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú ìlà àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ìlà tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo ìlà fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí ìlà fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
    images: [
      "assets/images/eyin_elebe.jpeg",
      "assets/images/okro.png",
      "assets/images/okro.png"
    ],
  ),
  PlantSuggestion(
    "assets/images/okro.png",
    "Okro",
    """ Òkìrò̀ ni igi tí ó jẹ́ ọmọ ẹ̀gbẹ́ irúgbìn, tí a tún mọ̀ sí igi tí ó ń mú èsò kan tí a ń pè ní òkìrò̀. Ní Yorùbá, a tún lè pè ní "ìlà". Ìlà jẹ́ èsò kan tí ó dùn mọ́ oúnjẹ nígbà púpọ̀, pàápàá jùlọ ní ilé Yorùbá.

Igi òkìrò̀ ń dàgbà gà tó tó ẹ̀wọ̀n méta sí ẹ̀wọ̀n márùn-ún. Ó ní ewé aláwò ewé tó dàbí irún. Èsò ìlà náà jẹ́ kékeré, ó sì ní irún kékeré lórí rẹ̀. Nígbà tí a bá gé ìlà sílẹ̀, a máa ń rí irún wọ̀nyí.

Nígbà tí a bá dáná ìlà, ó máa ń tú ìtò kan jáde tí ó ń ràn ìdáná lọ́wọ́ láti sọ àwọn oúnjẹ pọ̀. Èyí mú kí ìlà jẹ́ èròjà pàtàkì fún obè, pàápàá jùlọ fún obè ìlà. Obè ìlà jẹ́ irú obè kan tí a máa ń ṣe pẹ̀lú ìlà àti ewúrẹ́, adìẹ, tàbí ẹran mìíràn.

Ìlà tún ní oríṣiríṣi ìwòsàn lárà rẹ̀. Ó ní vitamin C, àti oríṣiríṣi ohun alumọ̀ni tí ó jẹ́ kí ó dára fún ara àti ètò ìdábòbò ara. A máa ń lo ìlà fún ìtójú arùn bí eèbì, ìtò súgà, àti ìṣòro inú.

Gbogbo èyí jẹ́ ìdí tí ìlà fí jẹ́ èsò pàtàkì láàrín Yorùbá, tí a sì máa ń tọ́jú rẹ̀ dáadáa nínú ọ̀kọ wa.""",
    images: [
      "assets/images/okro.png",
      "assets/images/okro.png",
      "assets/images/okro.png"
    ],
  ),
];
