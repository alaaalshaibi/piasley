import 'package:flutter/material.dart';
// Vertical Space
class CustomVerticalSpace extends StatelessWidget {
  double value ;
  CustomVerticalSpace({required this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value);
  }
}
// Horizontal Space
class CustomHorizontalSpace extends StatelessWidget {
  double value ;
  CustomHorizontalSpace({required this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value);
  }
}
