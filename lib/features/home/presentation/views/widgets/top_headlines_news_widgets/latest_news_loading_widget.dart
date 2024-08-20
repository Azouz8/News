import 'package:flutter/material.dart';

class LatestNewsLoadingWidget extends StatelessWidget {
  const LatestNewsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.85,
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade300
      ),
    );
  }
}
