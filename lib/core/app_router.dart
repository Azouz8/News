import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/service_locator.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'package:news/features/home/data/repos/home_repo_impl.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/views/see_all_view.dart';
import 'package:news/features/search/presentation/views/search_view.dart';
import 'package:news/features/settings/presentation/views/settings_view.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/home/presentation/views/news_details_view.dart';

abstract class AppRouter {
  static const newsDetailsView = "/newsDetailsView";
  static const seeAllView = "/seeAllView";
  static const searchView = "/searchView";
  static const settingsView = "/settingsView";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) =>  const HomeView()),
    GoRoute(
      path: newsDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => NewsCategoryCubit(getIt.get<HomeRepoImpl>()),
        child: NewsDetailsView(
          newsModel: state.extra as NewsModel,
        ),
      ),
    ),
    GoRoute(
      path: seeAllView,
      builder: (context, state) => const SeeAllView(),
    ),
    GoRoute(path: searchView, builder: (context, state) => const SearchView(),),
    GoRoute(path: settingsView, builder: (context, state) => const SettingsView(),)
  ]);
}
