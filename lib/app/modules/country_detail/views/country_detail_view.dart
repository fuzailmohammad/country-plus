import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/country_detail_controller.dart';

class CountryDetailView extends GetView<CountryDetailController> {
  const CountryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountryDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CountryDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
