import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/styles.dart';
import '../../../manager/top_headlines_cubit/top_headlines_cubit.dart';
import '../../../manager/top_headlines_cubit/top_headlines_state.dart';
import 'hot_updates_list_view_item.dart';

class SeeAllViewBody extends StatelessWidget {
  const SeeAllViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
      builder: (context, state) {
        if (state is TopHeadlinesSuccess) {
          return state.news.isEmpty
              ? Container()
              : SizedBox(
            child: ListView.builder(
                itemBuilder: (context, index) => HotUpdatesListViewItem(
                  newsModel: state.news[index],
                ),

                itemCount: state.news.length,
                scrollDirection: Axis.vertical),
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
