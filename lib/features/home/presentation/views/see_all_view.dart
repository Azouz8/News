import 'package:flutter/material.dart';

import 'widgets/see_all_view_widgets/see_all_view_body.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(
            "Hot Updated",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 18,
                  foreground: Paint()..shader = linearGradient,
                ),
          ),
          centerTitle: true,
        ),
        body: const SeeAllViewBody(),
      ),
    );
  }
}

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Color(0xffFF3A44), Color(0xffFF8086)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);
