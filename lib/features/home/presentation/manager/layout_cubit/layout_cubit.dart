import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;
  List<HeroIcon> icons = [
    const HeroIcon(HeroIcons.home,color: Colors.grey,),
    const HeroIcon(HeroIcons.user)
  ];
  List<String> titles = ["Home", "Profile"];

  void changeToHomeLayout() {
    emit(LayoutHome());
  }

  void changeToSearchLayout() {
    emit(LayoutSearch());
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit((LayoutBottomNav()));
  }

  void changeColor(int index) {
    emit(LayoutBottomNavIconColorChange());
  }
}
