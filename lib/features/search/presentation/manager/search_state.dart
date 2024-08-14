import 'package:news/features/home/data/models/NewsModel.dart';

class SearchNewsState {}

class SearchNewsInitial extends SearchNewsState {}
class SearchNewsSuccess extends SearchNewsState {
  List<NewsModel> books;
  SearchNewsSuccess(this.books);
}
class SearchNewsFailure extends SearchNewsState {
  String errMessage;
  SearchNewsFailure(this.errMessage);
}
class SearchNewsLoading extends SearchNewsState {}
