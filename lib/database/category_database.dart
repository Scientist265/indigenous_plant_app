// ignore_for_file: public_member_api_docs, sort_constructors_first
class Category {
  final String categoryName;
  final String imgPath;
  Category({
    required this.categoryName,
    required this.imgPath,
  });
}

List<Category> categories = [
  Category(categoryName: "Vegetables", imgPath: "assets/images/veggies.jpg"),
  Category(categoryName: "Tubers", imgPath: "assets/images/tubers.webp"),
  Category(categoryName: "Crops", imgPath: "assets/images/crops.png"),
  Category(categoryName: "Seeds", imgPath: "assets/images/seeds.webp"),
  Category(categoryName: "Fruits", imgPath: "assets/images/fruits.webp"),
  Category(categoryName: "Leaves", imgPath: "assets/images/leaves.jpeg"),
];

class Vegetables {
  final String categoryName;
  final List<VegetableSubCategory> subCategories;
  final String imgPath;
  Vegetables({
    required this.categoryName,
    required this.subCategories,
    required this.imgPath,
  });
}

class VegetableSubCategory {
  final String? botanicalName;
  final String? englishName;
  final String? commonName;
  final String? localName;
  final String? desc;
  final String? economicValue;
  final String? localValue;
  final String? habitat;
  final List<String>? imgPaths;
  VegetableSubCategory({
    this.botanicalName,
    this.englishName,
    this.commonName,
    this.localName,
    this.desc,
    this.economicValue,
    this.localValue,
    this.habitat,
    this.imgPaths,
  });
}

List<VegetableSubCategory> subCategories = [
  VegetableSubCategory(
    botanicalName: "Agaricus bisporus",
    englishName: "Mushroom",
    commonName: "",
    localName: "Olu",
    desc:
        "Mushrooms, which can be edible, medicinal, or toxic, have a morphology that includes a cap, often umbrella-shaped, with gills or pores underneath that produce spores, a stem (stipe) supporting the cap, and a mycelium network of fine white filaments (hyphae) that spread through the substrate.",
    economicValue:
        "Mushrooms hold significant economic value due to their large-scale commercial production for food and medicinal purposes, with major producers including China, the United States, and the Netherlands. The industry spans fresh mushrooms, processed products like canned and dried varieties, and mushroom-based supplements, contributing substantially to the global market, which is valued in the tens of billions of dollars. Additionally, mushroom farming generates employment in rural and peri-urban areas, covering various stages from cultivation to processing and distribution. Specialty and medicinal mushrooms, in particular, command higher prices, further boosting their economic importance.",
    localValue:
        "Mushrooms have substantial local value, deeply embedded in cultural traditions and culinary practices, especially in Asian cuisine where varieties like shiitake and enoki are highly prized. Indigenous communities often possess traditional knowledge about wild mushrooms' uses for food and medicine. Nutritionally, mushrooms are a valuable local food source, offering proteins, B-complex and D vitamins, minerals like selenium and potassium, and antioxidants. Their cultivation is also environmentally sustainable, as it frequently uses agricultural waste products as a growth medium, contributing to local economies and promoting sustainable agricultural practices.",
    habitat:
        "Mushrooms inhabit diverse ecosystems, including forests, grasslands, and wetlands, thriving in moist, shaded environments rich in organic material. They are also cultivated in controlled environments with specific temperature, humidity, and light conditions, using substrates like composted manure, straw, wood chips, and sawdust. Ecologically, mushrooms play a crucial role as decomposers, breaking down organic matter and recycling nutrients back into the soil, while mycorrhizal fungi form symbiotic relationships with plants, enhancing nutrient uptake and contributing to forest health.",
    imgPaths: [
      "assets/images/mushroom.webp",
      "assets/images/okro_2.png",
      "assets/images/okro_3.png"
    ],
  ),
  VegetableSubCategory(
    botanicalName: "Agaricus bisporus",
    englishName: "Cabbage",
    commonName: "",
    localName: "Kabeeji",
    desc:
        "Mushrooms, which can be edible, medicinal, or toxic, have a morphology that includes a cap, often umbrella-shaped, with gills or pores underneath that produce spores, a stem (stipe) supporting the cap, and a mycelium network of fine white filaments (hyphae) that spread through the substrate.",
    economicValue:
        "Mushrooms hold significant economic value due to their large-scale commercial production for food and medicinal purposes, with major producers including China, the United States, and the Netherlands. The industry spans fresh mushrooms, processed products like canned and dried varieties, and mushroom-based supplements, contributing substantially to the global market, which is valued in the tens of billions of dollars. Additionally, mushroom farming generates employment in rural and peri-urban areas, covering various stages from cultivation to processing and distribution. Specialty and medicinal mushrooms, in particular, command higher prices, further boosting their economic importance.",
    localValue:
        "Mushrooms have substantial local value, deeply embedded in cultural traditions and culinary practices, especially in Asian cuisine where varieties like shiitake and enoki are highly prized. Indigenous communities often possess traditional knowledge about wild mushrooms' uses for food and medicine. Nutritionally, mushrooms are a valuable local food source, offering proteins, B-complex and D vitamins, minerals like selenium and potassium, and antioxidants. Their cultivation is also environmentally sustainable, as it frequently uses agricultural waste products as a growth medium, contributing to local economies and promoting sustainable agricultural practices.",
    habitat:
        "Mushrooms inhabit diverse ecosystems, including forests, grasslands, and wetlands, thriving in moist, shaded environments rich in organic material. They are also cultivated in controlled environments with specific temperature, humidity, and light conditions, using substrates like composted manure, straw, wood chips, and sawdust. Ecologically, mushrooms play a crucial role as decomposers, breaking down organic matter and recycling nutrients back into the soil, while mycorrhizal fungi form symbiotic relationships with plants, enhancing nutrient uptake and contributing to forest health.",
    imgPaths: [
      "assets/images/cabbage.png",
      "assets/images/okro_2.png",
      "assets/images/okro_3.png"
    ],
  ),
  VegetableSubCategory(
    botanicalName: "Agaricus bisporus",
    englishName: "Cucumber",
    commonName: "",
    localName: "Kukumbaa",
    desc:
        "Mushrooms, which can be edible, medicinal, or toxic, have a morphology that includes a cap, often umbrella-shaped, with gills or pores underneath that produce spores, a stem (stipe) supporting the cap, and a mycelium network of fine white filaments (hyphae) that spread through the substrate.",
    economicValue:
        "Mushrooms hold significant economic value due to their large-scale commercial production for food and medicinal purposes, with major producers including China, the United States, and the Netherlands. The industry spans fresh mushrooms, processed products like canned and dried varieties, and mushroom-based supplements, contributing substantially to the global market, which is valued in the tens of billions of dollars. Additionally, mushroom farming generates employment in rural and peri-urban areas, covering various stages from cultivation to processing and distribution. Specialty and medicinal mushrooms, in particular, command higher prices, further boosting their economic importance.",
    localValue:
        "Mushrooms have substantial local value, deeply embedded in cultural traditions and culinary practices, especially in Asian cuisine where varieties like shiitake and enoki are highly prized. Indigenous communities often possess traditional knowledge about wild mushrooms' uses for food and medicine. Nutritionally, mushrooms are a valuable local food source, offering proteins, B-complex and D vitamins, minerals like selenium and potassium, and antioxidants. Their cultivation is also environmentally sustainable, as it frequently uses agricultural waste products as a growth medium, contributing to local economies and promoting sustainable agricultural practices.",
    habitat:
        "Mushrooms inhabit diverse ecosystems, including forests, grasslands, and wetlands, thriving in moist, shaded environments rich in organic material. They are also cultivated in controlled environments with specific temperature, humidity, and light conditions, using substrates like composted manure, straw, wood chips, and sawdust. Ecologically, mushrooms play a crucial role as decomposers, breaking down organic matter and recycling nutrients back into the soil, while mycorrhizal fungi form symbiotic relationships with plants, enhancing nutrient uptake and contributing to forest health.",
    imgPaths: [
      "assets/images/cucumber.webp",
      "assets/images/okro_2.png",
      "assets/images/okro_3.png"
    ],
  ),
];

class Tubers {}

class Crops {}

class Seeds {}

class Fruits {}

class Leaves {}
