import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/core/constants.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
          gradient: buttonsGradientColor,
          shape: BoxShape.circle),
      child: SvgPicture.asset(
          'assets/images/Group 38.svg',
          height: 22,
        ),

    );
  }
}
