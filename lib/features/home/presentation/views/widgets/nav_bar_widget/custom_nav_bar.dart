import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_state.dart';

import '../../../../../../core/app_router.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Container(
            margin: const EdgeInsets.only(right: 70, left: 70, bottom: 20),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                onTap: (value) {
                  cubit.changeIndex(value);
                  if(value == 0 && GoRouter.of(context).routeInformationProvider.value.uri.toString() != '/'){
                    GoRouter.of(context).push('/');
                  }
                  else if(value == 1 && GoRouter.of(context).routeInformationProvider.value.uri.toString() != AppRouter.settingsView){
                    GoRouter.of(context).push(AppRouter.settingsView);
                  }
                },
                selectedItemColor: Colors.blue,
                items: [
                  BottomNavigationBarItem(
                      icon: cubit.icons[0], label: cubit.titles[0]),
                  BottomNavigationBarItem(
                      icon: cubit.icons[1], label: cubit.titles[1]),
                ],
              ),
            ));
      },
    );
  }
}
