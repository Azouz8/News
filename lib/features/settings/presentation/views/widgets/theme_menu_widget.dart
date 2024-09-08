import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/settings/presentation/views/widgets/theme_data_menu_item.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';

import '../../../../../core/cache_helper.dart';

class ThemeMenu extends StatelessWidget {
  ThemeMenu({super.key});

  final menuController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ThemeDataMenuItem>(
      textStyle: const TextStyle(fontSize: 20),
      initialSelection: CacheHelper.getBoolean(key: "isDark") == true
          ? ThemeDataMenuItem(theme: "Dark")
          : ThemeDataMenuItem(theme: "Light"),
      width: MediaQuery.sizeOf(context).width * 0.9,
      controller: menuController,
      label: const Text("Theme"),
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: ThemeDataMenuItem(theme: 'Light'),
          leadingIcon: const Icon(Icons.light_mode_rounded),
          labelWidget: const Text("Light", style: TextStyle(fontSize: 20)),
          label: "Light",
        ),
        DropdownMenuEntry(
          value: ThemeDataMenuItem(theme: 'Dark'),
          labelWidget: const Text("Dark", style: TextStyle(fontSize: 20)),
          leadingIcon: const Icon(Icons.dark_mode),
          label: "Dark",
        ),
      ],
      onSelected: (value) {
        CacheHelper.putBoolean(key: "isDark", value:  value!.theme == "Dark" ? true : false);
        BlocProvider.of<LayoutCubit>(context)
            .changeAppMode(dark: value.theme == "Dark" ? true : false);
      },
    );
  }
}
