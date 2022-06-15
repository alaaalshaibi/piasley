import 'package:flutter/material.dart';
import '../../main.dart';

Widget starYellowIcon =
    const Icon(Icons.star, color: Color(0xFF699E96), size: 22);
Widget starWhiteIcon = Icon(
  Icons.star_border,
  color: isSwitched == false ? Colors.black : Colors.white,
  size: 22,
);

class CustomFiveStarsIcon extends StatelessWidget {
  const CustomFiveStarsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        starYellowIcon,
        starYellowIcon,
        starYellowIcon,
        starYellowIcon,
        starWhiteIcon
      ],
    );
  }
}

Icon loveRed = const Icon(
  Icons.favorite,
  color: Color(0xFF699E96),
  size: 22,
);
Icon loveWhite = Icon(
  Icons.favorite_outline_sharp,
  color: isSwitched == false ? Colors.black : Colors.white,
  size: 22,
);

class CustomFiveLoveIcon extends StatelessWidget {
  const CustomFiveLoveIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [loveRed, loveRed, loveRed, loveRed, loveWhite],
    );
  }
}
