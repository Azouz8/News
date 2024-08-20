import 'package:flutter/material.dart';

class NewsCategoryLoadingWidget extends StatelessWidget {
  const NewsCategoryLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.17,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.shade300
      ),
    );
  }
}
