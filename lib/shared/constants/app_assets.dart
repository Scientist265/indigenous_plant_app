import 'package:flutter_svg/svg.dart';

String getImagesJpeg(String jpegAsset) {
  return "assets/image/$jpegAsset.jpeg";
}

String getImagesPng(String pngAsset) {
  return "assets/image/$pngAsset.jpeg";
}

SvgPicture getSvgImage(String svgAsset) {
  return SvgPicture.asset("assets/$svgAsset.svg");
}
