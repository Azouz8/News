import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CustomCategoryStackInfo extends StatelessWidget {
  const CustomCategoryStackInfo({
    super.key, required this.title, required this.creator, required this.date,
  });
  final String title,creator,date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.textStyle14SemiBold.copyWith(
                color: Colors.white,
                fontFamily: "New York Small",
                fontSize: 16),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                creator.length >20 ? creator.substring(0,20):creator,

                style: Styles.textStyle14SemiBold.copyWith(
                  color: Colors.white,
                  fontFamily: "Nunito",
                ),
              ),
              const Spacer(),
              Text(
                date.substring(0,11),
                style: Styles.textStyle14SemiBold.copyWith(
                  color: Colors.white,
                  fontFamily: "Nunito",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
