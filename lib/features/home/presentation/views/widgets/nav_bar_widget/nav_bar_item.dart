import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:news/core/app_router.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';

class NavIconItem extends StatelessWidget {
  const NavIconItem({super.key,required this.icon, required this.title, required this.index , });

  final HeroIcon icon;
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<LayoutCubit>(context).changeIndex(index);
        if(index == 0 && GoRouter.of(context).routeInformationProvider.value.uri.toString() != '/'){
          GoRouter.of(context).push('/');
        }
        else if(index == 1 && GoRouter.of(context).routeInformationProvider.value.uri.toString() != AppRouter.settingsView){
          GoRouter.of(context).push(AppRouter.settingsView);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            height: 8,
          ),
          Text(title),
        ],
      ),
    );
  }
}