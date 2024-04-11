import 'package:bnews/controller/authentication_controller.dart';
import 'package:bnews/controller/home_controller.dart';
import 'package:bnews/controller/login_controller.dart';
import 'package:bnews/controller/onboarding_controller.dart';
import 'package:bnews/controller/signup_controller.dart';
import 'package:bnews/controller/splash_controller.dart';
import 'package:bnews/res/routes/route_name.dart';
import 'package:bnews/views/authentication_page.dart';
import 'package:bnews/views/home_page.dart';
import 'package:bnews/views/login_page.dart';
import 'package:bnews/views/onbording_page.dart';
import 'package:bnews/views/signup_page.dart';
import 'package:bnews/views/splash_page.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouts {
  static getRoutes() => [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashPage(),
      binding: BindingsBuilder.put(() => SplashController()),
    ),

    GetPage(
      name: RouteName.onboarding,
      page: () => const OnboardingPage(),
      binding: BindingsBuilder.put(() => OnboardingController()),
    ),

    GetPage(
      name: RouteName.authentication,
      page: () => const AuthenticationPage(),
      binding: BindingsBuilder.put(() => AuthenticationController()),
    ),

    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder.put(() => LoginController()),
    ),

    GetPage(
      name: RouteName.signup,
      page: () => const SignupPage(),
      binding: BindingsBuilder.put(() => SignupController()),
    ),

    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
      binding: BindingsBuilder.put(() => HomeController()),
    )
  ];
}
