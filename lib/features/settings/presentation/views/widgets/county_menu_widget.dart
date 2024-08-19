import 'package:flutter/material.dart';
import 'package:news/core/country_menu_item.dart';

class CountyMenu extends StatelessWidget {
  CountyMenu({super.key});

  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<CountryMenuItem>(
      textStyle: const TextStyle(fontSize: 20),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.grey.shade50),
      ),
      width: MediaQuery.sizeOf(context).width * 0.9,
      controller: countryController,
      label: const Text("Country"),
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: CountryMenuItem(country: 'Egypt'),
          leadingIcon: const Icon(Icons.flag),
          labelWidget: const Text("Egypt", style: TextStyle(fontSize: 20)),
          label: "Egypt",
        ),
        DropdownMenuEntry(
          value: CountryMenuItem(country: 'United States'),
          labelWidget: const Text("United States", style: TextStyle(fontSize: 20)),
          leadingIcon: const Icon(Icons.flag),
          label: "United States",
        ),
      ],
      onSelected: (value) {
        print(value?.country);
      },
    );
  }
}
