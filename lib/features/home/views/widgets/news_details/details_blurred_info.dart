import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class DetailsBlurredInfo extends StatelessWidget {
  const DetailsBlurredInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          color: const Color(0xffd6d6d9).withOpacity(0.5),
          // Transparent color to allow blur effect
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sunday, 9 May 2021",
                style: Styles.textStyle14SemiBold
                    .copyWith(fontFamily: "Nunito"),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Crypto investors should be prepared to lose all their money, BOE governor says",
                style: Styles.textStyle22Bold.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Published by Ryan Browne",
                style: Styles.textStyle10ExtraBold
                    .copyWith(fontFamily: "NunitoMed", fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}