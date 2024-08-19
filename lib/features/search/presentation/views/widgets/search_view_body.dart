import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/widgets/category_and_search_list_view_item.dart';
import 'package:news/features/search/presentation/manager/search_cubit.dart';
import 'package:news/features/search/presentation/manager/search_state.dart';
import '../../../../../core/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchNewsCubit, SearchNewsState>(
      builder: (context, state) {
        if (state is SearchNewsSuccess) {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CategoryAndSearchListViewItem(
                    newsModel: state.news[index],
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
              itemCount: state.news.length);
        } else if (state is SearchNewsFailure) {
          return Center(
              child: Text(
            state.errMessage,
            style: Styles.textStyle14SemiBold,
            textAlign: TextAlign.center,
          ));
        } else if (state is SearchNewsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Container();
        }
      },
    );
  }
}
