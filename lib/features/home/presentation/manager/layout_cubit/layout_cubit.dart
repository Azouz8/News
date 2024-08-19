import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:news/core/cache_helper.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;
  List<HeroIcon> icons = [
    const HeroIcon(HeroIcons.home),
    const HeroIcon(HeroIcons.cog6Tooth)
  ];
  List<String> titles = ["Home", "Settings"];

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

  bool isDark = false;
  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(NewsChangeAppModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: "isDark", value: isDark).then((value) {
        emit(NewsChangeAppModeState());
      });
    }
  }
}
