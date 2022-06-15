import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../../core/widgets/CustomImage.dart';

class OnBoradingBody extends StatelessWidget {
  const OnBoradingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'PAISLEY',
            body:
                'سعيًا لرغدِ العيشِ و الوئامِ في الصِّلات انطلقَ شعاعُ النورِ بفكرتنا هذه',
            image: CustomImage('images/p.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Exceptional modern clothings',
            body:
                'shop for exceptional modern clothings for your everyday life',
            image: CustomImage("images/on_boarding(2).png"),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'look GOOD , feel GOOD',
            body:
                'Discover the latest trends in fashion and explore your personality',
            image: CustomImage('images/on_boarding(1).png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: '3 in 1',
            body: 'Browse and search your new style from top brands',
            image: CustomImage('images/p.png'),
            footer: ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
              child: const Text('Home'),
            ),
          )
        ],
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
        onDone: () => Navigator.pushReplacementNamed(context, 'login'),
        showSkipButton: true,
        skip: const Text('Skip'),
        // onSkip: () => print('skip'),
        // showBackButton: true,
        // back: const Icon(Icons.arrow_back),
        dotsDecorator: getDotDecoration(),
        nextFlex: 0,
        skipOrBackFlex: 0,
        animationDuration: 500,
        isProgressTap: true,
        isProgress: true,
        // freeze: false,
        onChange: (index) => (index),
      ),
    ));
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      bodyTextStyle: TextStyle(fontSize: 20),
      imagePadding: EdgeInsets.all(24),
      titlePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.all(20),
      pageColor: Colors.white,
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: const Color(0xff699E96),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  }
}
