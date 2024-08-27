import 'package:flutter/material.dart';

class NewsCategoryLoadingWidget extends StatelessWidget {
  const NewsCategoryLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    return Container(
      height: MediaQuery.sizeOf(context).height * 0.17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isLightMode ? Colors.grey.shade300 : const Color(0xff3c4458),
      ),
    );
  }
}
