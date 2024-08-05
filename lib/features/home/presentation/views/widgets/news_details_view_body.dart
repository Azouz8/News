import 'package:flutter/material.dart';
import 'package:news/core/assets.dart';
import 'news_details/custom_back_button.dart';
import 'news_details/details_blurred_info.dart';
import 'news_details/details_description.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            AssetsData.testImage,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        const Positioned(
          top: 50,
          left: 15,
          right: 350,
          bottom: 770,
          child: CustomBackButton(),
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: 400,
          child: DetailsDescription(),
        ),
        const Positioned(
          top: 290,
          left: 32,
          right: 32,
          bottom: 410,
          child: DetailsBlurredInfo(),
        ),
      ],
    );
  }
}


