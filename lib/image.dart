import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroImage extends StatelessWidget {
  final String image;
  final bool isSvgImage;
  final double width;
  final double height;

  IntroImage({this.image, this.isSvgImage = false, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return isSvgImage
        ? SvgPicture.asset(
            image,
            width: width,
            height: height,
          )
        : Image.asset(
            image,
            width: width,
            height: height,
          );
  }
}
