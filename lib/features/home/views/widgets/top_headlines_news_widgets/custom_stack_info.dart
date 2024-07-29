import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CustomStackInfo extends StatelessWidget {
  const CustomStackInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 85,),
          Text(
            "by Ryan Browne",
            style: Styles.textStyle10ExtraBold
                .copyWith(color: Colors.white, fontFamily: "Nunito", fontSize: 12),
          ),
          Text(
            "Crypto investors should be prepared to lose all their money, BOE governor says",
            style: Styles.textStyle14Bold.copyWith(
                fontSize: 19,
                color: Colors.white,
                fontFamily: "New York Small"),
          ),
          const Spacer(),
          Text(
            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
            style: Styles.textStyle10Regular.copyWith(
                color: Colors.white, fontFamily: "Nunito", fontSize: 12 , fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}