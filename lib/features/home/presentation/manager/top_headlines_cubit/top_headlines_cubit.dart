import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/data/repos/home_repo.dart';
import 'package:news/features/home/presentation/manager/top_headlines_cubit/top_headlines_state.dart';

class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  TopHeadlinesCubit(this.homeRepo) : super(TopHeadlinesInitial());
  HomeRepo homeRepo;

  Future<void> fetchTopHeadlines() async {
    emit(TopHeadlinesLoading());
    var result = await homeRepo.fetchLatestNews();
    result.fold((failure) {
      emit(TopHeadlinesFailure(failure as String));
    }, (news) {
      emit(TopHeadlinesSuccess(news));
    });
  }
}
