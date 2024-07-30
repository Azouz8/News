import 'package:flutter/material.dart';

import 'app_bar_widgets/custom_app_bar.dart';
import 'category_widgets/category_header_list_view.dart';
import 'category_widgets/category_list_view.dart';
import 'latest_news_header_widgets/custom_header.dart';
import 'top_headlines_news_widgets/top_headline_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                const CustomAppBar(),
                const SizedBox(height: 24),
                const CustomHeader(),
                const TopHeadLinesListView(),
                const SizedBox(height: 24),
                const CategoryHeaderListView(),
                const SizedBox(height: 16),
                const CategoryListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}