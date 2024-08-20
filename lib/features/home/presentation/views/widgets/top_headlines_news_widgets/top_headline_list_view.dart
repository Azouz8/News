import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/styles.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_cubit.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_state.dart';
import 'package:news/features/home/presentation/views/widgets/top_headlines_news_widgets/latest_news_loading_widget.dart';

import 'top_headlines_list_view_item.dart';

class TopHeadLinesListView extends StatelessWidget {
  const TopHeadLinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
      builder: (context, state) {
        if (state is TopHeadlinesSuccess) {
          return state.news.isEmpty
              ? Container()
              : SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: ListView.separated(
                      itemBuilder: (context, index) => TopHeadLinesListViewItem(
                            newsModel: state.news[index],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: state.news.length,
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
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
                itemBuilder: (context, index) => const LatestNewsLoadingWidget(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 8,
                ),
                itemCount: 3,
                scrollDirection: Axis.horizontal),
          );
        }
      },
    );
  }
}
