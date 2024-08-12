import '../../../data/models/NewsModel.dart';

class NewsCategoryState {}

class NewsCategoryInitial extends NewsCategoryState {}

class NewsCategoryLoading extends NewsCategoryState {}

class NewsCategorySuccess extends NewsCategoryState {
  List<NewsModel> news;

  NewsCategorySuccess(this.news);
}

class NewsCategoryFailure extends NewsCategoryState {
  String errMessage;

  NewsCategoryFailure(this.errMessage);
}
