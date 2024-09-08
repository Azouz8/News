import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/routing/app_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

class HotUpdatesListViewItem extends StatelessWidget {
  const HotUpdatesListViewItem({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: ClipRRect(
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
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              newsModel.pubDate?.substring(0, 11) ?? "Unknown date",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 13),
            ),
            const SizedBox(
              height: 4,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              newsModel.title ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontFamily: "New York Small"),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              newsModel.description ?? "",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: "NunitoMed",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              newsModel.creator?.first ?? "Unknown Publisher",
              style: Theme.of(context).textTheme.headlineSmall!
                  .copyWith(fontSize: 13, fontFamily: "NunitoMed"),
            )
          ],
        ),
      ),
    );
  }
}
