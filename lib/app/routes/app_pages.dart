import 'package:get/get.dart';

import '../modules/country_detail/bindings/country_detail_binding.dart';
import '../modules/country_detail/views/country_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.COUNTRY_DETAIL,
      page: () => const CountryDetailView(),
      binding: CountryDetailBinding(),
    ),
  ];
}
