import 'package:flutter/material.dart';

class CustomCategoryAndSearchStackInfo extends StatelessWidget {
  const CustomCategoryAndSearchStackInfo({
    super.key,
    required this.title,
    required this.creator,
    required this.date,
  });

  final String title, creator, date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
          const Spacer(),
          Row(
            children: [
              Text(creator.length > 20 ? creator.substring(0, 20) : creator,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontFamily: "Nunito",
                      )),
              const Spacer(),
              Text(
                date.substring(0, 11),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontFamily: "Nunito",
                      fontSize: 14,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
