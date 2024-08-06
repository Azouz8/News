import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/app_router.dart';
import 'package:news/core/assets.dart';

import 'custom_top_headlines_stack_info.dart';

class TopHeadLinesListViewItem extends StatelessWidget {
  const TopHeadLinesListViewItem({super.key, required this.imgUrl, required this.title, required this.author, required this.url});

  final String imgUrl,title,author,url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.newsDetailsView);
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.85,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     image: const DecorationImage(
            //         image: AssetImage(
            //           AssetsData.testImage,
            //         ),
            //         fit: BoxFit.fill),
            //   ),
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
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
             CustomTopHeadLinesStackInfo(author: author,title: title,url: url,),
          ],
        ),
      ),
    );
  }
}
