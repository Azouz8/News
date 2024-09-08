import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/routing/app_router.dart';
import 'package:news/core/cache_helper.dart';
import 'package:news/core/service_locator.dart';
import 'package:news/core/themes/dark_theme/dark_theme.dart';
import 'package:news/core/themes/light_theme/light_theme.dart';
import 'package:news/features/home/data/repos/home_repo_impl.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:news/features/home/presentation/manager/layout_cubit/layout_state.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_cubit.dart';
import 'package:news/features/search/data/repos/search_repo_impl.dart';
import 'package:news/features/search/presentation/manager/search_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await CacheHelper.init();
  String? country = CacheHelper.getString(key: "country");
  bool?isDark = CacheHelper.getBoolean(key: "isDark");
  runApp(MyApp(country: country ?? 'us', isDark: isDark?? false,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.country, required this.isDark});

  final String country;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          TopHeadlinesCubit(getIt.get<HomeRepoImpl>())
            ..fetchTopHeadlines(country: country),
        ),
        BlocProvider(
          create: (context) =>
          NewsCategoryCubit(getIt.get<HomeRepoImpl>())
            ..fetchNewsCategory(category: "Healthy", country: country),
        ),
        BlocProvider(
          create: (context) =>
          LayoutCubit()
            ..changeAppMode(dark: isDark),
        ),
        BlocProvider(
          create: (context) =>
              SearchNewsCubit(searchRepo: getIt.get<SearchRepoImpl>()),
        ),
      ],
      child: BlocBuilder<LayoutCubit,LayoutState >(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: getLightTheme(),
            darkTheme: getDarkTheme(),
            themeMode: LayoutCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
