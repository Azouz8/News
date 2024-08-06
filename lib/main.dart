import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/constants.dart';
import 'package:news/core/service_locator.dart';
import 'package:news/features/home/data/repos/home_repo_impl.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              TopHeadlinesCubit(getIt.get<HomeRepoImpl>())..fetchTopHeadlines(),
        ),
        BlocProvider(
          create: (context) =>
          NewsCategoryCubit(getIt.get<HomeRepoImpl>())..fetchNewsCategory(category: "Healthy"),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: scaffoldColor,
        ),
      ),
    );
  }
}
