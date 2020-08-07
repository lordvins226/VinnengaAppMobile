import 'package:flutter/material.dart';
import 'package:vinnenga/ui/views/login_view.dart';
import 'package:vinnenga/ui/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green,
          ),
        ),
      home: LoginView()
    );
  }
}
