import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vinnenga/ui/views/home_view.dart';
import 'package:vinnenga/ui/views/login_view.dart';
import 'package:vinnenga/ui/views/splash.dart';

import 'core/enums/user.dart';

import 'core/services/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserProvider.initialize()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.green,
            ),
          ),
          routes: {
            "/Home": (_) => HomeView(),
            "/Login": (_) => LoginView(),
          },
          home: ScreensController())));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch (user.status) {
      case Status.Uninitialized:
        return SplashScreen();
      case Status.Unauthenticated:
        return LoginView();
      case Status.Authenticating:
      case Status.Authenticated:
        return HomeView();
      default:
        return LoginView();
    }
  }
}
