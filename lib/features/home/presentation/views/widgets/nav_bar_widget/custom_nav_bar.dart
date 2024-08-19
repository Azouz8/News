import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_state.dart';

import 'nav_bar_item.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Container(
          margin: const EdgeInsets.only(right: 70, left: 70, bottom: 25),
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(29),
                blurRadius: 20,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavIconItem(icon: cubit.icons[0], title: cubit.titles[0], index: 0,),
                NavIconItem(icon: cubit.icons[1], title: cubit.titles[1], index: 1,),
              ]),
        );
      },
    );
  }
}

