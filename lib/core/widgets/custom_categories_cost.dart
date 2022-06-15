import 'package:flutter/material.dart';
import 'customSpace.dart';
import '../../main.dart';

class CustomCategoriesCost extends StatelessWidget {
  const CustomCategoriesCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "15,00 jod",
          style: TextStyle(
              fontSize: 12,
              color: isSwitched == false ? Colors.black : Colors.white),
        ),
        CustomHorizontalSpace(value: 5),
        Text(
          "30,00 jod",
          style: TextStyle(
              fontSize: 12,
              color: isSwitched == false ? Colors.black : Colors.white,
              decoration: TextDecoration.lineThrough),
        ),
        CustomHorizontalSpace(value: 5),
        const Text(
          "50%",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF699E96)),
        ),
      ],
    );
  }
}
