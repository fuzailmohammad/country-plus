import 'package:country_plus/app/modules/home/all_continent/controllers/all_continent_controller.dart';
import 'package:country_plus/app/modules/home/all_countries/controllers/all_countries_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AllCountriesController());
    Get.lazyPut(() => AllContinentController());
  }
}
