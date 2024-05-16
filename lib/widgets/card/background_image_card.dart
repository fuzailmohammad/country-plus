import 'dart:ui';

import 'package:country_plus/app/data/values/images.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.globe),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: child),
      ),
    );
  }
}
