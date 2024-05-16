import 'package:country_plus/app/app_controller.dart';
import 'package:country_plus/app/data/network/network_requester.dart';
import 'package:country_plus/app/data/repository/config_repository.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkRequester(), permanent: true);
    Get.put(ConfigRepository(), permanent: true);
    Get.put(AppController(), permanent: true);
  }
}
