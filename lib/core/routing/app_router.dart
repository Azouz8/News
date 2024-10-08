import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/service_locator.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'package:news/features/home/data/repos/home_repo_impl.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';
import 'package:news/features/home/presentation/views/see_all_view.dart';
import 'package:news/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:news/features/search/presentation/views/search_view.dart';
import 'package:news/features/settings/presentation/views/settings_view.dart';
import 'package:news/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/news_details_view.dart';

abstract class AppRouter {
  static const homeView = "/homeView";
  static const onboardingView = "/onboardingView";
  static const newsDetailsView = "/newsDetailsView";
  static const seeAllView = "/seeAllView";
  static const searchView = "/searchView";
  static const settingsView = "/settingsView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SplashView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: onboardingView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const OnBoardingView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const HomeView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: newsDetailsView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: BlocProvider(
              create: (context) => NewsCategoryCubit(getIt.get<HomeRepoImpl>()),
              child: NewsDetailsView(
                newsModel: state.extra as NewsModel,
              ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: seeAllView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SeeAllView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: searchView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SearchView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: settingsView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SettingsView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          );
        },
      )
    ],
  );
}
