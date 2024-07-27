import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_app_bar_icon.dart';
import 'custom_text_form_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(),
              ),
              SizedBox(width: 16,),
              AppBarIcon(),
            ],
          ),
        ],
      ),
    );
  }
}



