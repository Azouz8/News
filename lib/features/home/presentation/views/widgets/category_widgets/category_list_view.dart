import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_state.dart';

import '../../../../../../core/styles.dart';
import 'category_list_view_item.dart';

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
              itemBuilder: (context, index) => CategoryListViewItem(
                    title: state.news[index].title!,
                    date: state.news[index].pubDate!,
                    creator: state.news[index].creator?.first ?? "Unknown",
                    imgUrl: state.news[index].imageUrl ??
                        "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ=",
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: 10);
        } else if (state is NewsCategoryFailure) {
          return Center(
              child: Text(
            state.errMessage,
            style: Styles.textStyle14SemiBold,
            textAlign: TextAlign.center,
          ));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
