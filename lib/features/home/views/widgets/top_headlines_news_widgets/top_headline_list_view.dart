import 'package:flutter/material.dart';

import 'top_headlines_list_view_item.dart';


class TopHeadLinesListView extends StatelessWidget {
  const TopHeadLinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.separated(
          itemBuilder: (context, index) => const TopHeadLinesListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(width: 8,),
          itemCount: 10,scrollDirection: Axis.horizontal),
    );
  }
}
