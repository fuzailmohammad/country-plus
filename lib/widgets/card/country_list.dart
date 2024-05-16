import 'package:country_plus/app/data/models/dto/country.dart';
import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  final VoidCallback onTap;
  final Country country;

  const CountryList({
    super.key,
    required this.onTap,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              country.flag ?? 'https://demofree.sirv.com/nope-not-here.jpg',
              height: 30,
              width: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country.name ?? 'Not Available',
                    style: Styles.tsWhiteRegular14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    children: [
                      const Text(
                        Strings.capital,
                        style: Styles.tsGreyRegular12,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          country.capital ?? 'Not Available',
                          style: Styles.tsWhiteRegular12,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        Strings.population,
                        style: Styles.tsGreyRegular12,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        country.population.toString(),
                        style: Styles.tsWhiteRegular12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
