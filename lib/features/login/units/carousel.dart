import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_web_ui/constants.dart';

class LoginCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: sizeFromHeight(0, removeAppBarSize: false),
        scrollPhysics: PageScrollPhysics()
      ),
      items: [
        '1',
        '1'
      ].map((e) => Image.asset(getAsset(e),fit: BoxFit.cover,)).toList(),
    );
  }
}
