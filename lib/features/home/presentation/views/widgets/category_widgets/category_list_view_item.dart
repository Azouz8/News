import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/assets.dart';

import 'custom_category_stack_info.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.newsDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.17,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff626262).withOpacity(0.35),
                    const Color(0xff626262).withOpacity(0.35),
                    const Color(0xff000000).withOpacity(0.5),
                  ],
                ),
              ),
            ),
            const CustomCategoryStackInfo(),
          ],
        ),
      ),
    );
  }
}
