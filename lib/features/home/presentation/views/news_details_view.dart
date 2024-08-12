import 'package:flutter/material.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NewsDetailsViewBody(newsModel: newsModel,),
    );
  }
}
