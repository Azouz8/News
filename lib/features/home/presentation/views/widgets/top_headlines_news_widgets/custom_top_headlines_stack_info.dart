import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CustomTopHeadLinesStackInfo extends StatelessWidget {
  const CustomTopHeadLinesStackInfo({
    super.key, required this.author, required this.title, required this.url,
  });
  final String author,title,url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 85,
          ),
          Text(
            author,
            style: Styles.textStyle10ExtraBold.copyWith(
                color: Colors.white, fontFamily: "NunitoMed", fontSize: 12),
          ),
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14Bold.copyWith(
                fontSize: 19,
                color: Colors.white,
                fontFamily: "New York Small"),
          ),
          const Spacer(),
          Text(
            url,
            style: Styles.textStyle10Regular.copyWith(
                color: Colors.white,
                fontFamily: "NunitoMed",
                fontSize: 14,
                fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
