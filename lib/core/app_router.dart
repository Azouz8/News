import 'package:go_router/go_router.dart';

import '../features/home/presentation/views/home_view.dart';
import '../features/home/presentation/views/news_details_view.dart';

abstract class AppRouter{
  static const newsDetailsView = "/newsDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/' , builder: (context, state) => const HomeView(),),
      GoRoute(path: newsDetailsView , builder: (context, state) => const NewsDetailsView(),)
    ]
  );
}