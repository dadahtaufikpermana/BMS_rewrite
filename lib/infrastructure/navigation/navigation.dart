import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/home/home.screen.dart';
import 'bindings/controllers/home.controller.binding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
  ];
}