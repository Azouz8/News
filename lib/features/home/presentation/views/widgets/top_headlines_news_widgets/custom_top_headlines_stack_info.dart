import 'package:flutter/material.dart';

class CustomTopHeadLinesStackInfo extends StatelessWidget {
  const CustomTopHeadLinesStackInfo({
    super.key,
    required this.author,
    required this.title,
    required this.description,
  });

  final String author, title, description;

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
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontFamily: "NunitoMed", fontSize: 12, color: Colors.white),
          ),
          const SizedBox(height: 4,),
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontFamily: "New York Small",color: Colors.white),
          ),
          const Spacer(),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: "NunitoMed",
                fontSize: 14,
                color: Colors.white,
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
