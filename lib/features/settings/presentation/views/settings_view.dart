import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/settings/presentation/views/widgets/settings_view_body.dart';

import '../../../home/presentation/manager/layout_cubit/layout_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        BlocProvider.of<LayoutCubit>(context).changeIndex(0);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: Theme.of(context).textTheme.titleMedium!
                .copyWith(fontSize: 22, fontFamily: "Nunito"),
          ),
          centerTitle: true,
        ),
        body: const SettingsViewBody(),
      ),
    );
  }
}
