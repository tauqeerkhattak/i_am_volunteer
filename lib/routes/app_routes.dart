import 'package:get/get.dart';

import '../bindings/auth_binding.dart';
import '../ui/auth/auth_dashboard.dart';
import '../ui/auth/login.dart';
import '../ui/auth/register.dart';
import '../ui/auth/splash.dart';

class AppRoutes {
  static String splash = '/';
  static String login = '/login';
  static String register = '/register';
  static String authDashboard = '/auth';

  static List<GetPage> pages = [
    GetPage(
      name: splash,
      page: () => Splash(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: login,
      page: () => Login(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: register,
      page: () => Register(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: authDashboard,
      page: () => AuthDashboard(),
      binding: AuthBinding(),
    ),
  ];
}
