import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/styles.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_cubit.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_state.dart';

import 'top_headlines_list_view_item.dart';

class TopHeadLinesListView extends StatelessWidget {
  const TopHeadLinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
      builder: (context, state) {
        if (state is TopHeadlinesSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
                itemBuilder: (context, index) => TopHeadLinesListViewItem(
                      imgUrl: state.news[index].urlToImage ??
                          "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ=",
                      title: state.news[index].title!,
                      url: state.news[index].url!,
                      author: state.news[index].author!,
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                itemCount: 10,
                scrollDirection: Axis.horizontal),
          );
        } else if (state is TopHeadlinesFailure) {
          return Center(
              child: Text(
            state.errMessage,
            style: Styles.textStyle14SemiBold,
            textAlign: TextAlign.center,
          ));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
