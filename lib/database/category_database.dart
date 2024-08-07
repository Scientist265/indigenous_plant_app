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
  final List<String>? images;
  VegetableSubCategory({
    this.botanicalName,
    this.englishName,
    this.commonName,
    this.localName,
    this.desc,
    this.economicValue,
    this.localValue,
    this.habitat,
    this.images,
  });
}

List<VegetableSubCategory> vegetableSubCategories = [
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
    images: [
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
    images: [
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
    images: [
      "assets/images/cucumber.webp",
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
    images: [
      "assets/images/efirin_2.webp",
      "assets/images/leaves.jpeg",
      "assets/images/tubers.webp"
    ],
  ),
];

class Tubers {
  final String? botanicalName;
  final String? englishName;
  final String? commonName;
  final String? localName;
  final String? desc;
  final String? economicValue;
  final String? localValue;
  final String? habitat;
  final List<String>? images;
  Tubers({
    this.botanicalName,
    this.englishName,
    this.commonName,
    this.localName,
    this.desc,
    this.economicValue,
    this.localValue,
    this.habitat,
    this.images,
  });
}

List<Tubers> tubersSubCategories = [];

class Crops {}

class Seeds {}

class Fruits {
  final String? botanicalName;
  final String? englishName;
  final String? commonName;
  final String? localName;
  final String? desc;
  final String? economicValue;
  final String? localValue;
  final String? habitat;
  final List<String>? images;
  Fruits({
    this.botanicalName,
    this.englishName,
    this.commonName,
    this.localName,
    this.desc,
    this.economicValue,
    this.localValue,
    this.habitat,
    this.images,
  });
  List<Fruits> fruitsSubCategories = [
    Fruits(
        botanicalName: "Chrysophyllum Albidum",
        englishName: "Edible Fruits",
        commonName: "Africa Star Apple",
        localName: "Agbalumo",
        desc:
            "a small to medium buttressed tree species, up to 25-37 m in height with a mature girth varying from 1.5 to 2 m. Bole is usually fluted, frequently free of branches for 21 m. Bark thin, pale brownish-green, slash exuding white, gummy latex.",
        economicValue:
            """ Chrysophyllum albidum, commonly known as the African star apple or "udara," holds significant economic value across various sectors. The fruit is prized for its sweet and nutritious pulp, rich in vitamins and minerals, and is sold in local and international markets, boosting the income of farmers and traders. Beyond its edible value, various parts of the tree, such as the bark, leaves, and seeds, are used in traditional medicine to treat ailments like malaria, diarrhea, and wounds, creating a market for herbal products.

The wood of Chrysophyllum albidum is durable and utilized in construction, furniture making, and other woodworking industries, benefiting the timber trade. In agroforestry systems, the tree enhances soil fertility and provides shade for crops, improving agricultural productivity and sustainability. The seeds contain oils used in the cosmetic industry for skincare products, adding another revenue stream.

Additionally, the tree contributes to environmental sustainability through carbon sequestration and erosion control, indirectly supporting the economy by reducing costs associated with land degradation. Overall, Chrysophyllum albidum offers substantial economic benefits through its diverse applications in agriculture, medicine, timber, cosmetics, and environmental conservation, making it a valuable resource for various industries and communities.""",
        localValue:
            """ Locally, Chrysophyllum albidum, or the African star apple, holds substantial value. Its fruit is a popular and nutritious local delicacy, providing essential vitamins and minerals. Various tree parts are used in traditional medicine to treat ailments like malaria and wounds, vital in rural areas with limited access to modern healthcare. The fruit's sale generates significant income for farmers and traders, especially during harvest season. Culturally, it plays a role in local customs and ceremonies. Agriculturally, it supports sustainable farming practices by improving soil fertility and providing shade for other crops. Environmentally, the tree helps prevent soil erosion and enhances local biodiversity, crucial for maintaining healthy ecosystems. Overall, Chrysophyllum albidum is essential for its nutritional, medicinal, economic, cultural, and environmental contributions to local communities.""",
        habitat:
            """ Chrysophyllum albidum, or the African star apple, is native to tropical Africa, including countries like Nigeria, Ghana, Cameroon, and Uganda. It thrives in tropical climates with high humidity and rainfall (1,200 to 1,500 mm annually), preferring deep, well-drained loamy soils rich in organic matter. Typically found at elevations below 1,000 meters, it grows in lowland rainforests, riverine forests, and mixed deciduous forests. The tree is often cultivated near human settlements for its economic and nutritional value and sometimes planted as a shade tree in agricultural fields.""",
        images: [
          "assets/images/agbalumo_1.jpeg",
          "assets/images/agbalumo_2.webp",
          "assets/images/agbalumo_3.webp",
        ]),
    Fruits(
        botanicalName: "Chrysophyllum Albidum",
        englishName: "Edible Fruits",
        commonName: "Africa Star Apple",
        localName: "Agbalumo",
        desc:
            "a small to medium buttressed tree species, up to 25-37 m in height with a mature girth varying from 1.5 to 2 m. Bole is usually fluted, frequently free of branches for 21 m. Bark thin, pale brownish-green, slash exuding white, gummy latex.",
        economicValue:
            """ Chrysophyllum albidum, commonly known as the African star apple or "udara," holds significant economic value across various sectors. The fruit is prized for its sweet and nutritious pulp, rich in vitamins and minerals, and is sold in local and international markets, boosting the income of farmers and traders. Beyond its edible value, various parts of the tree, such as the bark, leaves, and seeds, are used in traditional medicine to treat ailments like malaria, diarrhea, and wounds, creating a market for herbal products.

The wood of Chrysophyllum albidum is durable and utilized in construction, furniture making, and other woodworking industries, benefiting the timber trade. In agroforestry systems, the tree enhances soil fertility and provides shade for crops, improving agricultural productivity and sustainability. The seeds contain oils used in the cosmetic industry for skincare products, adding another revenue stream.

Additionally, the tree contributes to environmental sustainability through carbon sequestration and erosion control, indirectly supporting the economy by reducing costs associated with land degradation. Overall, Chrysophyllum albidum offers substantial economic benefits through its diverse applications in agriculture, medicine, timber, cosmetics, and environmental conservation, making it a valuable resource for various industries and communities.""",
        localValue:
            """ Locally, Chrysophyllum albidum, or the African star apple, holds substantial value. Its fruit is a popular and nutritious local delicacy, providing essential vitamins and minerals. Various tree parts are used in traditional medicine to treat ailments like malaria and wounds, vital in rural areas with limited access to modern healthcare. The fruit's sale generates significant income for farmers and traders, especially during harvest season. Culturally, it plays a role in local customs and ceremonies. Agriculturally, it supports sustainable farming practices by improving soil fertility and providing shade for other crops. Environmentally, the tree helps prevent soil erosion and enhances local biodiversity, crucial for maintaining healthy ecosystems. Overall, Chrysophyllum albidum is essential for its nutritional, medicinal, economic, cultural, and environmental contributions to local communities.""",
        habitat:
            """ Chrysophyllum albidum, or the African star apple, is native to tropical Africa, including countries like Nigeria, Ghana, Cameroon, and Uganda. It thrives in tropical climates with high humidity and rainfall (1,200 to 1,500 mm annually), preferring deep, well-drained loamy soils rich in organic matter. Typically found at elevations below 1,000 meters, it grows in lowland rainforests, riverine forests, and mixed deciduous forests. The tree is often cultivated near human settlements for its economic and nutritional value and sometimes planted as a shade tree in agricultural fields.""",
        images: [
          "assets/images/agbalumo_1.jpeg",
          "assets/images/agbalumo_2.webp",
          "assets/images/agbalumo_3.webp",
        ]),
    Fruits(
        botanicalName: "Chrysophyllum Albidum",
        englishName: "Edible Fruits",
        commonName: "Africa Star Apple",
        localName: "Agbalumo",
        desc:
            "a small to medium buttressed tree species, up to 25-37 m in height with a mature girth varying from 1.5 to 2 m. Bole is usually fluted, frequently free of branches for 21 m. Bark thin, pale brownish-green, slash exuding white, gummy latex.",
        economicValue:
            """ Chrysophyllum albidum, commonly known as the African star apple or "udara," holds significant economic value across various sectors. The fruit is prized for its sweet and nutritious pulp, rich in vitamins and minerals, and is sold in local and international markets, boosting the income of farmers and traders. Beyond its edible value, various parts of the tree, such as the bark, leaves, and seeds, are used in traditional medicine to treat ailments like malaria, diarrhea, and wounds, creating a market for herbal products.

The wood of Chrysophyllum albidum is durable and utilized in construction, furniture making, and other woodworking industries, benefiting the timber trade. In agroforestry systems, the tree enhances soil fertility and provides shade for crops, improving agricultural productivity and sustainability. The seeds contain oils used in the cosmetic industry for skincare products, adding another revenue stream.

Additionally, the tree contributes to environmental sustainability through carbon sequestration and erosion control, indirectly supporting the economy by reducing costs associated with land degradation. Overall, Chrysophyllum albidum offers substantial economic benefits through its diverse applications in agriculture, medicine, timber, cosmetics, and environmental conservation, making it a valuable resource for various industries and communities.""",
        localValue:
            """ Locally, Chrysophyllum albidum, or the African star apple, holds substantial value. Its fruit is a popular and nutritious local delicacy, providing essential vitamins and minerals. Various tree parts are used in traditional medicine to treat ailments like malaria and wounds, vital in rural areas with limited access to modern healthcare. The fruit's sale generates significant income for farmers and traders, especially during harvest season. Culturally, it plays a role in local customs and ceremonies. Agriculturally, it supports sustainable farming practices by improving soil fertility and providing shade for other crops. Environmentally, the tree helps prevent soil erosion and enhances local biodiversity, crucial for maintaining healthy ecosystems. Overall, Chrysophyllum albidum is essential for its nutritional, medicinal, economic, cultural, and environmental contributions to local communities.""",
        habitat:
            """ Chrysophyllum albidum, or the African star apple, is native to tropical Africa, including countries like Nigeria, Ghana, Cameroon, and Uganda. It thrives in tropical climates with high humidity and rainfall (1,200 to 1,500 mm annually), preferring deep, well-drained loamy soils rich in organic matter. Typically found at elevations below 1,000 meters, it grows in lowland rainforests, riverine forests, and mixed deciduous forests. The tree is often cultivated near human settlements for its economic and nutritional value and sometimes planted as a shade tree in agricultural fields.""",
        images: [
          "assets/images/agbalumo_1.jpeg",
          "assets/images/agbalumo_2.webp",
          "assets/images/agbalumo_3.webp",
        ]),
    Fruits(
        botanicalName: "Chrysophyllum Albidum",
        englishName: "Edible Fruits",
        commonName: "Africa Star Apple",
        localName: "Agbalumo",
        desc:
            "a small to medium buttressed tree species, up to 25-37 m in height with a mature girth varying from 1.5 to 2 m. Bole is usually fluted, frequently free of branches for 21 m. Bark thin, pale brownish-green, slash exuding white, gummy latex.",
        economicValue:
            """ Chrysophyllum albidum, commonly known as the African star apple or "udara," holds significant economic value across various sectors. The fruit is prized for its sweet and nutritious pulp, rich in vitamins and minerals, and is sold in local and international markets, boosting the income of farmers and traders. Beyond its edible value, various parts of the tree, such as the bark, leaves, and seeds, are used in traditional medicine to treat ailments like malaria, diarrhea, and wounds, creating a market for herbal products.

The wood of Chrysophyllum albidum is durable and utilized in construction, furniture making, and other woodworking industries, benefiting the timber trade. In agroforestry systems, the tree enhances soil fertility and provides shade for crops, improving agricultural productivity and sustainability. The seeds contain oils used in the cosmetic industry for skincare products, adding another revenue stream.

Additionally, the tree contributes to environmental sustainability through carbon sequestration and erosion control, indirectly supporting the economy by reducing costs associated with land degradation. Overall, Chrysophyllum albidum offers substantial economic benefits through its diverse applications in agriculture, medicine, timber, cosmetics, and environmental conservation, making it a valuable resource for various industries and communities.""",
        localValue:
            """ Locally, Chrysophyllum albidum, or the African star apple, holds substantial value. Its fruit is a popular and nutritious local delicacy, providing essential vitamins and minerals. Various tree parts are used in traditional medicine to treat ailments like malaria and wounds, vital in rural areas with limited access to modern healthcare. The fruit's sale generates significant income for farmers and traders, especially during harvest season. Culturally, it plays a role in local customs and ceremonies. Agriculturally, it supports sustainable farming practices by improving soil fertility and providing shade for other crops. Environmentally, the tree helps prevent soil erosion and enhances local biodiversity, crucial for maintaining healthy ecosystems. Overall, Chrysophyllum albidum is essential for its nutritional, medicinal, economic, cultural, and environmental contributions to local communities.""",
        habitat:
            """ Chrysophyllum albidum, or the African star apple, is native to tropical Africa, including countries like Nigeria, Ghana, Cameroon, and Uganda. It thrives in tropical climates with high humidity and rainfall (1,200 to 1,500 mm annually), preferring deep, well-drained loamy soils rich in organic matter. Typically found at elevations below 1,000 meters, it grows in lowland rainforests, riverine forests, and mixed deciduous forests. The tree is often cultivated near human settlements for its economic and nutritional value and sometimes planted as a shade tree in agricultural fields.""",
        images: [
          "assets/images/agbalumo_1.jpeg",
          "assets/images/agbalumo_2.webp",
          "assets/images/agbalumo_3.webp",
        ]),
  ];
}

class Leaves {}
