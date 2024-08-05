import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CustomCategoryStackInfo extends StatelessWidget {
  const CustomCategoryStackInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "5 things to know about the 'conundrum' of lupus",
            style: Styles.textStyle14SemiBold.copyWith(
                color: Colors.white,
                fontFamily: "New York Small",
                fontSize: 16),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "Matt Villano",
                style: Styles.textStyle14SemiBold.copyWith(
                  color: Colors.white,
                  fontFamily: "Nunito",
                ),
              ),
              const Spacer(),
              Text(
                "Sunday, 9 May 2021",
                style: Styles.textStyle14SemiBold.copyWith(
                  color: Colors.white,
                  fontFamily: "Nunito",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
