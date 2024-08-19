import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/views/widgets/nav_bar_widget/custom_nav_bar.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(children: [
          HomeViewBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavBar(),
          ),
        ]),
      ),
    );
  }
}
