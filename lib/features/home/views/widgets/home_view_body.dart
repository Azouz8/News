import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

import 'custom_app_bar_icon.dart';
import 'custom_text_form_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: CustomTextFormField(),
              ),
              SizedBox(
                width: 16,
              ),
              AppBarIcon(),
            ],
          ),
          const SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Latest News" , style: Styles.textStyle22Bold.copyWith(fontSize: 18 , fontFamily: "New York Small"),),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("See all", style: Styles.textStyle12SemiBold.copyWith(color: Colors.blue , fontSize: 14),),
                    const SizedBox(width: 4,),
                    const Icon(Icons.arrow_forward , color: Colors.blue,),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
