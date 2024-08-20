import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/cache_helper.dart';
import 'package:news/core/country_menu_item.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_cubit.dart';

class CountryMenu extends StatelessWidget {
  CountryMenu({super.key});

  final countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<CountryMenuItem>(
      textStyle: const TextStyle(fontSize: 20),
      initialSelection: CountryMenuItem(country: CacheHelper.getString(key: 'country')!), // This sets Egypt as the initial selection
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.grey.shade50),
      ),
      width: MediaQuery.sizeOf(context).width * 0.9,
      controller: countryController,
      label: const Text("Country"),
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: CountryMenuItem(country: 'eg'),
          leadingIcon: const Icon(Icons.flag),
          labelWidget: const Text("Egypt", style: TextStyle(fontSize: 20)),
          label: "Egypt",
        ),
        DropdownMenuEntry(
          value: CountryMenuItem(country: 'us'),
          labelWidget: const Text("United States", style: TextStyle(fontSize: 20)),
          leadingIcon: const Icon(Icons.flag),
          label: "United States",
        ),
      ],
      onSelected: (value) {
        CacheHelper.putString(key: "country", value: value!.country);
        print(CacheHelper.getString(key: 'country'));
        BlocProvider.of<TopHeadlinesCubit>(context).fetchTopHeadlines(country: CacheHelper.getString(key: 'country')!);
        BlocProvider.of<NewsCategoryCubit>(context).fetchNewsCategory(country: CacheHelper.getString(key: 'country')!, category: 'Healthy');
      },

    );
  }
}
