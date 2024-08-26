import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/search/presentation/manager/search_state.dart';

import '../../data/repos/search_repo.dart';

class SearchNewsCubit extends Cubit<SearchNewsState> {
  SearchNewsCubit({required this.searchRepo}) : super(SearchNewsInitial());
  SearchRepo searchRepo;

  Future<void> fetchSearchedNews({required String search, required String country}) async {
    emit(SearchNewsLoading());
    var result = await searchRepo.fetchSearchedNews(search: search,country: country);
    result.fold((failure) {
      emit(SearchNewsFailure(failure.toString()));
    }, (search) {
      emit(SearchNewsSuccess(search));
    });
  }
  void clearList(){
    emit(SearchNewsSuccess([]));
  }
}