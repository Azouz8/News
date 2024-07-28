import 'package:flutter/material.dart';

import 'custom_app_bar_icon.dart';
import 'custom_header.dart';
import 'custom_text_form_field.dart';
import 'top_headlines_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(),
              ),
              SizedBox(
                width: 16,
              ),
              AppBarIcon(),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          CustomHeader(),
          TopHeadLinesListView(),
        ],
      ),
    );
  }
}

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
