


import 'package:delievery_app/presentations/screens/auth/forgot_password_screen.dart';
import 'package:delievery_app/presentations/screens/auth/login_screen.dart';
import 'package:delievery_app/presentations/screens/auth/otp_screen.dart';
import 'package:delievery_app/presentations/screens/auth/register_screen.dart';
import 'package:delievery_app/presentations/screens/auth/registeremail_screen.dart';
import 'package:delievery_app/presentations/screens/splash/intro_splash_screen.dart';
import 'package:delievery_app/presentations/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String introSplash = '/intro_splash';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String registeremail ='/registeremail';
  static const String dashboard = '/dashboard';
  static const String forgotPassword = '/forgot';
  static const String otp = '/otp';

  static List<GetPage> routes = [
    GetPage(name: introSplash, page: () => const IntroSplashScreen()),
    GetPage(name: splash, page: () =>  SplashScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: register, page: () => const RegisterScreen()),
    GetPage(name: otp, page: () => const OtpScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: registeremail, page: () => RegisteremailScreen()),


  
  ];
}
