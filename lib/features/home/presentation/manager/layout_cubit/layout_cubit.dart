import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  void changeToHomeLayout() {
    emit(LayoutHome());
  }

  void changeToSearchLayout() {
    emit(LayoutSearch());
  }
}
