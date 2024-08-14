import 'package:news/features/home/data/models/NewsModel.dart';

class SearchNewsState {}

class SearchNewsInitial extends SearchNewsState {}
class SearchNewsClear extends SearchNewsState {}
class SearchNewsSuccess extends SearchNewsState {
  List<NewsModel> news;
  SearchNewsSuccess(this.news);
}
class SearchNewsFailure extends SearchNewsState {
  String errMessage;
  SearchNewsFailure(this.errMessage);
}
class SearchNewsLoading extends SearchNewsState {}
