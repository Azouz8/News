import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

import 'custom_category_stack_info.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key, required this.imgUrl, required this.title, required this.creator, required this.date});
  final String imgUrl,title,creator,date;
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
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
             CustomCategoryStackInfo(title: title,creator: creator,date: date,),
          ],
        ),
      ),
    );
  }
}
