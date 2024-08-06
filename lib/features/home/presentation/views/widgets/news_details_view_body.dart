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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: MediaQuery.sizeOf(context).height*0.45,
          child: const DetailsDescription(),
        ),
         Positioned(
          top: MediaQuery.sizeOf(context).height*0.32,
          left: 32,
          right: 32,
          child: const DetailsBlurredInfo(),
        ),
        const Positioned(
          top: 50,
          left: 15,
          child: CustomBackButton(),
        ),
      ],
    );
  }
}


