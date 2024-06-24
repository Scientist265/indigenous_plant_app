class Translation {
  static String getLanguageCode(String language) {
    switch (language) {
      case "English":
        return "en";
      case "Yoruba":
        return "yo";
    }
    return "";
  }
}
