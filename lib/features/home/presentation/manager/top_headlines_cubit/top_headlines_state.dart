import '../../../data/models/NewsModel.dart';

class TopHeadlinesState {}

class TopHeadlinesInitial extends TopHeadlinesState {}

class TopHeadlinesLoading extends TopHeadlinesState {}

class TopHeadlinesSuccess extends TopHeadlinesState {
  List<NewsModel> news;

  TopHeadlinesSuccess(this.news);
}

class TopHeadlinesFailure extends TopHeadlinesState {
  String errMessage;

  TopHeadlinesFailure(this.errMessage);
}
