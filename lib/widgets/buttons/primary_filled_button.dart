import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';

class PrimaryFilledButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PrimaryFilledButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          text,
          style: Styles.tsWhiteRegular18,
        ),
      ),
    );
  }
}
