import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

class HotUpdatesListViewItem extends StatelessWidget {
  const HotUpdatesListViewItem({
    super.key, required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 7 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: newsModel.imageUrl ??
                    "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ=",
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            newsModel.pubDate?.substring(0,11) ?? "Unknown date",
            style: Styles.textStyle14Regular.copyWith(
              color: const Color(0xff2E0505),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            newsModel.title??"",
            style: Styles.textStyle14SemiBold
                .copyWith(fontFamily: "New York Small", fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            newsModel.description ?? "",
            style: Styles.textStyle14Regular.copyWith(
              fontFamily: "NunitoMed",
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            newsModel.creator?.first?? "Unknown Publisher",
            style: Styles.textStyle12Bold
                .copyWith(fontSize: 13, fontFamily: "NunitoMed"),
          )
        ],
      ),
    );
  }
}
