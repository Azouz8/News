import 'package:flutter/material.dart';
import 'package:news/core/assets.dart';
import 'package:news/features/home/views/widgets/custom_stack_info.dart';

class TopHeadLinesListViewItem extends StatelessWidget {
  const TopHeadLinesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
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
          const CustomStackInfo(),
        ],
      ),
    );
  }
}