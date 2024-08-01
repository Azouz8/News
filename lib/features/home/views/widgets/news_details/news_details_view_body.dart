import 'package:flutter/material.dart';
import 'package:news/core/assets.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          AssetsData.testImage,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        const Positioned(
          top: 50,
          left: 15,
          child: BackButton(),
        ),
      ],
    );
  }
}