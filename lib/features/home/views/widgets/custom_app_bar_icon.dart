import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffFF3A44),
                Color(0xffFF8086),
              ],
              begin: Alignment.topLeft
              ,
              end: Alignment.bottomRight
          ),

          shape: BoxShape.circle),
      child: SvgPicture.asset(
          'assets/images/Group 38.svg',
          height: 22,
        ),

    );
  }
}
