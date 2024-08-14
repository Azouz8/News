import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_state.dart';

import '../../../../../search/presentation/manager/search_cubit.dart';
import 'custom_app_bar_icon.dart';
import 'custom_text_form_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.layoutState,
  });

  final LayoutState layoutState;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(layoutState is LayoutSearch)
          IconButton(
            onPressed: () {
              BlocProvider.of<LayoutCubit>(context).changeToHomeLayout();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        Expanded(
          child: CustomTextFormField(),
        ),
        const SizedBox(
          width: 16,
        ),
        const AppBarIcon(),
      ],
    );
  }
}
