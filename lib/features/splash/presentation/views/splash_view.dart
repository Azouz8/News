import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/core/cache_helper.dart';
import 'package:news/core/routing/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if(CacheHelper.getBoolean(key: "OnBoarding") == null || CacheHelper.getBoolean(key: "OnBoarding") == false){
          GoRouter.of(context).pushReplacement(AppRouter.onboardingView);
        }
        else
          GoRouter.of(context).pushReplacement(AppRouter.homeView);
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: isLightMode ? Colors.white : const Color(0xff222732),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLightMode)
              Image.asset(
                AssetsData.newsIconLight,
                width: 150,
              )
            else
              Image.asset(
                AssetsData.newsIconDark,
                width: 150,
              ),
          ],
        ),
      ),
    );
  }
}
