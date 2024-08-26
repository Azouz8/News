import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Latest News",
          style: Theme.of(context).textTheme.headlineMedium!
              .copyWith(fontFamily: "New York Small"),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.seeAllView);
          },
          child: Row(
            children: [
              Text(
                "See all",
                style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(color: Colors.blue),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
