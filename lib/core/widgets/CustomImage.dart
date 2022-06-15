import 'package:flutter/material.dart';
class CustomImage extends StatelessWidget {
  final String image ;
  CustomImage( this.image);
  Widget build(BuildContext context) {
    return Image.asset(image);
  }
}
