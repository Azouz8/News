import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_state.dart';
import 'package:news/features/home/presentation/views/widgets/category_widgets/news_category_loading_widget.dart';

import '../../../../../../core/styles.dart';
import '../../../../../../core/widgets/category_and_search_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCategoryCubit, NewsCategoryState>(
      builder: (context, state) {
        if (state is NewsCategorySuccess) {
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CategoryAndSearchListViewItem(
                    newsModel: state.news[index],
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: state.news.length);
        } else if (state is NewsCategoryFailure) {
          return Center(
              child: Text(
            state.errMessage,
            style: Styles.textStyle14SemiBold,
            textAlign: TextAlign.center,
          ));
        } else {
          return SizedBox(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  const NewsCategoryLoadingWidget(),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: 3,
            ),
          );
        }
      },
    );
  }
}
