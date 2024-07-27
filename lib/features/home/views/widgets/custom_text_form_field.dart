import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:news/core/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide:  BorderSide(
            color: const Color(0xff818181).withOpacity(0.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Color(0xff818181),
          ),
        ),
        hintStyle: Styles.textStyle12SemiBold.copyWith(fontFamily: "Nunito" , fontSize: 16 ,color: Color(0xff818181).withOpacity(0.5)),
        hintText: "Dogecoin to the Moon...",
        suffixIcon:  Icon(
          FeatherIcons.search,
          color: const Color(0xff818181).withOpacity(0.5),
        ),
      ),
    );
  }
}