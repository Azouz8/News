import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/routing/app_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

import 'custom_top_headlines_stack_info.dart';

class TopHeadLinesListViewItem extends StatelessWidget {
  const TopHeadLinesListViewItem({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.newsDetailsView, extra: newsModel);
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.85,
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
            CustomTopHeadLinesStackInfo(
              author: newsModel.creator?.first ?? "Unknown",
              title: newsModel.title!,
              description: newsModel.description ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
