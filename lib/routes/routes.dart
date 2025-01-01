import 'package:flutter/cupertino.dart';

import '../screens/auth/login/login_screen.dart';
import '../screens/on_boarding/on_boarding_screen.dart';


class AppRoutes {
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String register = '/register';


  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onBoarding: (context) => OnboardingScreen(),
      login: (context) => LoginScreen(),
      // register: (context) => RegisterScreen(),

    };
  }
}
