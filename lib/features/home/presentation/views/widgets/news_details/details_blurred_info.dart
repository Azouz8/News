import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsBlurredInfo extends StatelessWidget {
  const DetailsBlurredInfo({
    super.key,
    required this.title,
    required this.date,
    required this.author,
  });

  final String date, title, author;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 167,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          color: const Color(0xffd6d6d9).withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date.substring(0, 11),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontFamily: "Nunito"),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                author,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontFamily: "NunitoMed"),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
