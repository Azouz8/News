import 'package:flutter/material.dart';
import 'package:news/core/assets.dart';
import 'app_bar_widgets/custom_app_bar.dart';
import 'category_widgets/category_header_list_view.dart';
import 'category_widgets/custom_category_stack_info.dart';
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
          SizedBox(height: 24),
          CustomHeader(),
          TopHeadLinesListView(),
          SizedBox(height: 24),
          CategoryHeaderListView(),
          SizedBox(height: 16),
          CategoryListViewItem()
        ],
      ),
    );
  }
}

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

