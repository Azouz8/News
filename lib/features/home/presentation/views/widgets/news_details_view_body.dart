import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

import 'news_details/custom_back_button.dart';
import 'news_details/details_blurred_info.dart';
import 'news_details/details_description.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.newsModel});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 375,
            child: CachedNetworkImage(
              imageUrl: newsModel.imageUrl ??
                  "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ=",
              fit: BoxFit.fill,
            )),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: MediaQuery.sizeOf(context).height * 0.47,
          child: DetailsDescription(
            description: newsModel.description ?? "",
            link: newsModel.link!,
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.34,
          left: 32,
          right: 32,
          child: DetailsBlurredInfo(
            date: newsModel.pubDate!,
            title: newsModel.title!,
            author: newsModel.creator?.first ?? "Unknown",
          ),
        ),
        const Positioned(
          top: 50,
          left: 15,
          child: CustomBackButton(),
        ),
      ],
    );
  }
}
