import 'package:flutter/material.dart';
import 'Presentation/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoradingBody(),
    );
  }
}
