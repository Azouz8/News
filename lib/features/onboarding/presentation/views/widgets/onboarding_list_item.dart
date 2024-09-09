import 'package:flutter/material.dart';

import '../../../data/models/onboarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  OnBoardingItem({super.key, required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Image.asset(
            model.image,
            height: 100,
            width: double.infinity,
          )),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NunitoMed",
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
          model.widget,
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
        ],
      ),
    );
  }
}
