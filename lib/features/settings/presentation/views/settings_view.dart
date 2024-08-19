import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/styles.dart';
import 'package:news/features/settings/presentation/views/widgets/settings_view_body.dart';

import '../../../home/presentation/manager/layout_cubit/layout_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        BlocProvider.of<LayoutCubit>(context).changeIndex(0);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: Styles.textStyle14SemiBold
                .copyWith(fontSize: 22, fontFamily: "Nunito"),
          ),
          centerTitle: true,
        ),
        body: const SettingsViewBody(),
      ),
    );
  }
}
