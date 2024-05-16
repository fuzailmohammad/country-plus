import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController();
  final RxInt _currentPage = 0.obs;

  int get currentPage => _currentPage.value;

  @override
  void onClose() {}

  switchPage(int index) {
    if (currentPage != index) {
      pageController.jumpToPage(index);
    }
  }

  moveToContinents() => switchPage(0);

  moveToCountries() => switchPage(1);

  onPageChanged(int index) => _currentPage.value = index;
}
