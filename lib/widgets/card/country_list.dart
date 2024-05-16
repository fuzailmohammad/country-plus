import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  final VoidCallback onTap;
  final String flag;
  final String title;

  const CountryList({
    super.key,
    required this.onTap,
    required this.flag,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Image.network(
              flag,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: Styles.tsWhiteRegular12,
            )
          ],
        ),
      ),
    );
  }
}
