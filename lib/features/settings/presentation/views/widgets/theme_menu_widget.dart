import 'package:flutter/material.dart';
import 'package:news/core/theme_data_menu_item.dart';

class ThemeMenu extends StatelessWidget {
  ThemeMenu({super.key});

  final menuController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ThemeDataMenuItem>(
      textStyle: const TextStyle(fontSize: 20),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.grey.shade50),
      ),
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
        print(value?.theme);
      },
    );
  }
}
