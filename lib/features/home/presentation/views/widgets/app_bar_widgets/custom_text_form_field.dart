import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:news/core/cache_helper.dart';
import 'package:news/core/constants.dart';
import 'package:news/core/styles.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/search/presentation/manager/search_cubit.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key});

  final TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: text,
      onTap: () {
        BlocProvider.of<LayoutCubit>(context).changeToSearchLayout();
      },
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0,
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintStyle: Styles.textStyle12SemiBold.copyWith(
            fontFamily: "Nunito", fontSize: 16, color: appBarCompsColor),
        hintText: "Dogecoin to the Moon...",
        suffixIcon: Icon(
          FeatherIcons.search,
          color: appBarCompsColor,
        ),
      ),
      onChanged: (value) {
        if (value != "") {
          BlocProvider.of<SearchNewsCubit>(context)
              .fetchSearchedNews(search: value,country: CacheHelper.getString(key: "country")?? 'us');
        }
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: appBarCompsColor,
      ),
    );
  }
}
