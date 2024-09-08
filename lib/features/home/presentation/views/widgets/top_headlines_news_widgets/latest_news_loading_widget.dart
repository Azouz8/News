import 'package:flutter/material.dart';

class LatestNewsLoadingWidget extends StatelessWidget {
  const LatestNewsLoadingWidget({super.key});
  @override
  Widget build(BuildContext context) {
  final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.85,
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isLightMode ? Colors.grey.shade300 : const Color(0xff3c4458)
      ),
    );
  }
}
