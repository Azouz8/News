import 'package:flutter/material.dart';
import 'package:news/core/assets.dart';
import 'package:news/core/styles.dart';

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
          TopHeadLinesListViewItem(),
        ],
      ),
    );
  }
}




