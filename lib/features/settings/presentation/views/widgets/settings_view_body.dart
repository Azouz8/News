import 'package:flutter/material.dart';
import 'package:news/features/settings/presentation/views/widgets/country_menu_widget.dart';
import 'package:news/features/settings/presentation/views/widgets/theme_menu_widget.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ThemeMenu(),
          const SizedBox(height: 16,),
          CountryMenu()
        ],
      ),
    );
  }
}

