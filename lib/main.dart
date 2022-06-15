import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Features/Home/Pages/Shop1/Presentation/Pages/Shop%20Now/kids.dart';
import 'Features/Home/Pages/Shop1/Presentation/Pages/Shop%20Now/women.dart';
import 'Features/Home/Pages/Shop1/shop1_view.dart';
import 'Features/Splash_Screen/splash_body.dart';
import 'Features/Home/home.dart';
import 'Features/Home/Pages/Shop1/Presentation/Pages/Shop Now/men_shop.dart';
import 'Features/Home/Pages/Shop2/Presentation/Pages/Shop Now2/men.dart';
import 'Features/Home/Pages/Shop2/Presentation/Pages/Shop Now2/kids.dart';
import 'Features/Home/Pages/Shop2/Presentation/Pages/Shop Now2/women.dart';
import 'Features/Home/Pages/Shop2/Presentation/manager/provider_.dart';
import 'Features/Home/Pages/Shop2/Shop2_view.dart';
import 'Features/Home/Pages/shop3/Presentation/Pages/Shop Now3/men.dart';
import 'Features/Home/Pages/shop3/Presentation/Pages/Shop Now3/kids.dart';
import 'Features/Home/Pages/shop3/Presentation/Pages/Shop Now3/women.dart';
import 'Features/Home/Pages/shop3/Presentation/manager/provider_.dart';
import 'Features/Home/Pages/shop3/shop_view.dart';
import 'Features/Notification/notification_view.dart';
import 'Features/Onboarding_Screen/onboarding_view.dart';
import 'Features/Home/Pages/Shop1/Presentation/manager/provider.dart';
import 'Features/Auth/sign_up.dart';
import 'Features/Auth/login.dart';
import 'core/widgets/deliveryDetails.dart';

bool isSwitched = false;
// ignore: non_constant_identifier_names
var ReadyDivider = Divider(
  color: Colors.grey.withOpacity(0.2),
  thickness: 2,
);
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Provcart(),
        ),
        ChangeNotifierProvider(
          create: (context) => Prov_button(),
        ),
        ChangeNotifierProvider(
          create: (context) => Provcart2(),
        ),
        ChangeNotifierProvider(
          create: (context) => Prov_button2(),
        ),
        ChangeNotifierProvider(
          create: (context) => Provcart3(),
        ),
        ChangeNotifierProvider(
          create: (context) => Prov_button3(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        routes: {
          'onboarding_view': (context) => const OnBoardingView(),
          'login': (context) => const Login(),
          'sign_up': (context) => const SignUp(),
          'home': (context) => const Home(),
          'shop1_view': (context) => const Shop1View(),
          'shop2_view': (context) => const Shop2View(),
          'shop3_view': (context) => const Shop3View(),
          'shop_men1': (context) => const ShopMen1(),
          'shop_women1': (context) => ShopWomen1(),
          'shop_kids1': (context) => const ShopKids1(),
          'shop_men2': (context) => const ShopMen2(),
          'shop_women2': (context) => const ShopWomen2(),
          'shop_kids2': (context) => const ShopKids2(),
          'shop_men3': (context) => const ShopMen3(),
          'shop_women3': (context) => const ShopWomen3(),
          'shop_kids3': (context) => const ShopKids3(),
          'notification': (context) => const NotificationView(),
          'Delivery_Details': (context) => DeliveryDetails(),
        },
      ),
    );
  }
}
