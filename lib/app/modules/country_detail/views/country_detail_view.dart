import 'dart:math';

import 'package:country_plus/app/data/models/dto/country.dart';
import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/country_detail_controller.dart';

class CountryDetailView extends GetView<CountryDetailController> {
  const CountryDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DETAIL'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CountryDetailBox(country: controller.country,),
        ));
  }
}

class CountryDetailBox extends StatelessWidget {

  final Country country;
  const CountryDetailBox({
    super.key, required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            country.flag ?? 'https://demofree.sirv.com/nope-not-here.jpg',
            width: Get.width /2,
          ),
        ),
        const SizedBox(height: 20,),
        Text(country.name ?? 'Not Available', style: Styles.tsPrimaryColorBold20, textAlign: TextAlign.center,),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(10),
          width: Get.width,
          decoration: BoxDecoration(
            color: getRandomColor(),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              TitleText(title: Strings.capital, text: country.capital ?? 'Not Available',),
              TitleText(title: Strings.population, text: country.population.toString(),),
              TitleText(title: Strings.region, text: country.region ?? 'Not Available',),
              TitleText(title: Strings.subregion, text: country.subregion ?? 'Not Available',),
            ],
          ),
        ),
      ],
    );
  }
}

Color getRandomColor() {
  final Random random = Random();
  return Color.fromARGB(
    100,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class TitleText extends StatelessWidget {

  final String title;
  final String text;

  const TitleText({
    super.key, required this.title, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Text(title,
          style: Styles.tsBlackBold14,
        ),
        Text(text,
          style: Styles.tsBlackRegular14,
        ),
      ],
    );
  }
}
