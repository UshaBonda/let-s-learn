import 'package:get/get.dart';

import '../final/final_binding.dart';
import '../final/final_view.dart';
import '../home/home_binding.dart';
import '../home/home_view.dart';
import '../main/main_binding.dart';
import '../main/main_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.FINAL,
      page: () => FinalView(),
      binding: FinalBinding(),
    )
  ];
}
