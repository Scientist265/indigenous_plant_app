class PlantSuggestion {
  final String? imgPath;
  final String? plantName;

  PlantSuggestion(
    this.imgPath,
    this.plantName,
  );
}

List<PlantSuggestion> plantSuggestions = [
  PlantSuggestion("imgPath", "assets/images/lapalapa.jpeg"),
  PlantSuggestion("imgPath", "assets/images/akoko.jpeg"),
  PlantSuggestion("imgPath", "assets/images/kankandoro.jpeg"),
  PlantSuggestion("imgPath", "assets/images/eyin_elebe.jpeg"),
];
