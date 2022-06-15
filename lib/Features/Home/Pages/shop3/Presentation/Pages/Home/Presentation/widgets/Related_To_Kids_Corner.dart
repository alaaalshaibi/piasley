import 'package:flutter/material.dart';
import '../../../../../../../../../main.dart';

class ReadyRow extends StatelessWidget {
  const ReadyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "32.00 \$",
          style: TextStyle(
              fontSize: 15,
              color: isSwitched == false ? Colors.black : Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "35.00 \$",
          style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.lineThrough,
              color: isSwitched == false ? Colors.black : Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "20%",
          style: TextStyle(
              fontSize: 15,
              color: Color(0xff699E96),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
