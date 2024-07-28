import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}