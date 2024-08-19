import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_state.dart';
import 'package:news/features/home/presentation/views/widgets/nav_bar_widget/custom_nav_bar.dart';
import 'package:news/features/search/presentation/views/widgets/search_view_body.dart';

import 'app_bar_widgets/custom_app_bar.dart';
import 'category_widgets/category_header_list_view.dart';
import 'category_widgets/category_list_view.dart';
import 'latest_news_header_widgets/custom_header.dart';
import 'top_headlines_news_widgets/top_headline_list_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomAppBar(layoutState: state),
                    const SizedBox(height: 24),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (state is! LayoutSearch) {
                          return const Stack(
                            children: [
                              Column(
                                children: [
                                  CustomHeader(),
                                  TopHeadLinesListView(),
                                  SizedBox(height: 24),
                                  CategoryHeaderListView(),
                                  SizedBox(height: 16),
                                  CategoryListView(),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return const SearchViewBody();
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
