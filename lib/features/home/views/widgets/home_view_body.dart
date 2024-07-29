import 'package:flutter/material.dart';
import 'category_widgets/category_list_view.dart';
import 'app_bar_widgets/custom_app_bar.dart';
import 'latest_news_header_widgets/custom_header.dart';
import 'top_headlines_news_widgets/top_headline_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 24,
          ),
          CustomHeader(),
          TopHeadLinesListView(),
          SizedBox(
            height: 24,
          ),
          CategoryListView(),
        ],
      ),
    );
  }
}




