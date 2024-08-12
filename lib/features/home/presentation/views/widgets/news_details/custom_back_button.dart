import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding:
                const EdgeInsets.only(top: 12, left: 16, bottom: 12, right: 8),
            color: const Color(0xffd6d6d9).withOpacity(0.5),
            // Transparent color to allow blur effect
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
    );
  }
}
