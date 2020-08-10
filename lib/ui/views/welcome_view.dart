import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:vinnenga/ui/widgets/getstarted.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          fullTransitionValue: 500,
          enableSlideIcon: true,
          enableLoop: false,
        ),
      ),
    );
  }
}

final pages = [
  Container(
    color: Colors.pink,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/images/welcome.png',
          fit: BoxFit.cover,
        ),
        Padding(padding: const EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            new Text(
              "Bienvenue",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            new Text(
              "Sur Vinnenga",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    ),
  ),
  Container(
    color: Color(0xFFfbab66),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/images/secure.png',
          fit: BoxFit.cover,
        ),
        Padding(padding: const EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            new Text(
              "Des Données ",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            new Text(
              "Fiables et securisées",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    ),
  ),
  Container(
    color: Colors.greenAccent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/images/tracking.png',
          fit: BoxFit.cover,
        ),
        Padding(padding: const EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            new Text(
              "Tracabilité",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            new Text(
              "et Suivi ",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            new Text(
              "Des Minerais",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Billy",
                  fontWeight: FontWeight.w600),
            ),
            Container(width: 250, child: GetStarted())
          ],
        )
      ],
    ),
  ),
];
