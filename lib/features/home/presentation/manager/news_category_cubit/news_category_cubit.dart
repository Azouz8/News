import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/data/repos/home_repo.dart';

import 'news_category_state.dart';

class NewsCategoryCubit extends Cubit<NewsCategoryState> {
  NewsCategoryCubit(this.homeRepo) : super(NewsCategoryInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewsCategory({required String category,required String country}) async {
    emit(NewsCategoryLoading());
    var result = await homeRepo.fetchNewsCategory(category: category,country: country);
    result.fold((failure) {
      emit(NewsCategoryFailure(failure.toString()));
    }, (news) {
      emit(NewsCategorySuccess(news));
    });
  }
}
