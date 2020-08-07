import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vinnenga/ui/views/home_view.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomSplash(
          imagePath: 'assets/images/welcome.png',
          backGroundColor: Colors.greenAccent,
          animationEffect: 'zoom-out',
          logoSize: 350,
          home: HomeView(),
          duration: 5000,
          type: CustomSplashType.StaticDuration,
        ),
      ),
    );
  }
}

