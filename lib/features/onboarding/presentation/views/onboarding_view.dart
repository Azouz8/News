import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/routing/app_router.dart';
import 'package:news/features/onboarding/presentation/views/widgets/onboarding_list_item.dart';
import 'package:news/features/settings/presentation/views/widgets/country_menu_widget.dart';
import 'package:news/features/settings/presentation/views/widgets/theme_menu_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/cache_helper.dart';
import '../../../../core/constants.dart';
import '../../data/models/onboarding_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<OnBoardingModel> list = [
    OnBoardingModel(
      image: "assets/images/onBoarding1.png",
      title: "See Your Important and The Latest News Easily",
      widget: Container(),
    ),
    OnBoardingModel(
      image: "assets/images/onBoarding2.png",
      title: "Lets Setup Your Preferences",
      widget: Column(
        children: [
          ThemeMenu(),
          SizedBox(height: 8),
          CountryMenu(),
        ],
      ),
    ),
  ];

  PageController pageController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
  final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              submitOnBoardingSkip(context);
            },
            child: Text(
              "SKIP",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: const Color(0xff252525), fontFamily: "NunitoMed"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              onPageChanged: (value) {
                if (value == list.length - 1) {
                  isLast = true;
                  setState(() {});
                } else {
                  isLast = false;
                  setState(() {});
                }
              },
              itemBuilder: (context, index) =>
                  OnBoardingItem(model: list[index]),
              itemCount: list.length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: list.length,
                effect: ExpandingDotsEffect(
                  dotColor: isLightMode? Colors.grey:Colors.grey.shade800  ,
                  dotHeight: 9,
                  dotWidth: 9,
                  expansionFactor: 2.7,
                  activeDotColor: isLightMode?Color(0xff252525): Colors.grey ,
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: buttonsGradientColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (isLast) {
                        submitOnBoarding(context);
                      }
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        ),
                    child: isLast
                        ? Text(
                            "Get Started",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.white),
                          )
                        : Text(
                            "Next",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.white),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void submitOnBoarding(BuildContext context) {
    if (CacheHelper.getString(key: "country") == null)
      CacheHelper.putString(key: "country", value: "us");
    if (CacheHelper.getBoolean(key: "isDark") == null ||
        CacheHelper.getBoolean(key: "isDark") == false)
      CacheHelper.putBoolean(key: "isDark", value: false);

    CacheHelper.putBoolean(key: "OnBoarding", value: true).then((value) {
      if (value) {
        GoRouter.of(context).pushReplacement(AppRouter.homeView);
      }
    });
  }

  void submitOnBoardingSkip(BuildContext context) {
    CacheHelper.putBoolean(key: "isDark", value: false);
    CacheHelper.putString(key: "country", value: "us");

    CacheHelper.putBoolean(key: "OnBoarding", value: true).then((value) {
      if (value) {
        GoRouter.of(context).pushReplacement(AppRouter.homeView);
      }
    });
  }
}
