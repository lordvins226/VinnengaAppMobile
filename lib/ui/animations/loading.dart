import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.green,
        body: Container(
          color: Colors.green,
          child: Center(
            child: Lottie.asset('assets/animations/loading.json'),
          ),
        ),
      ),
    );
  }
}