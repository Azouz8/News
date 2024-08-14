import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

import 'custom_category_and_search_stack_info.dart';

class CategoryAndSearchListViewItem extends StatelessWidget {
  const CategoryAndSearchListViewItem({super.key, required this.newsModel});

  final NewsModel newsModel;
  final String img =
      "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ=";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.newsDetailsView, extra: newsModel);
      },
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.17,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: newsModel.imageUrl ?? AssetsData.networkImg,
                errorWidget: (context, url, error) => Image.network(
                  AssetsData.networkImg,
                  fit: BoxFit.fill,
                ),
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
            CustomCategoryAndSearchStackInfo(
              title: newsModel.title!,
              creator: newsModel.creator?.first ?? "Unknown Publisher",
              date: newsModel.pubDate!,
            ),
          ],
        ),
      ),
    );
  }
}
