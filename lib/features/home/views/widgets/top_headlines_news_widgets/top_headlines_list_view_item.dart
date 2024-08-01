import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/views/widgets/top_headlines_news_widgets/custom_top_headlines_stack_info.dart';

class TopHeadLinesListViewItem extends StatelessWidget {
  const TopHeadLinesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.newsDetailsView);
      },
      child: SizedBox(
        width:  MediaQuery.sizeOf(context).width * 0.85,
        child: Stack(
        fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff626262).withOpacity(0.35),
                    const Color(0xff626262).withOpacity(0.35),
                    const Color(0xff000000).withOpacity(0.5),
                  ],
                ),
              ),
            ),
            const CustomTopHeadLinesStackInfo(),
          ],
        ),
      ),
    );
  }
}