import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';
import 'custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTextFormField(),
        ),
        SizedBox(
          width: 16,
        ),
        AppBarIcon(),
      ],
    );
  }
}
