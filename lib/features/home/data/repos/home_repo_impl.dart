import 'package:either_dart/either.dart';
import 'package:news/core/networking/api_error_handler.dart';
import 'package:news/core/networking/api_service.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'package:news/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<NewsModel>>> fetchLatestNews({required String country}) async {
    try {
      var data = await apiService.getHeadlines(country: country);
      List<NewsModel> news = [];
      for (var i in data["results"]) {
        news.add(NewsModel.fromJson(i));
      }
      return Right(news);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<NewsModel>>> fetchNewsCategory(
      {required String category, required String country}) async {
    try {
      var data = await apiService.getCategory(q: category,country: country);
      List<NewsModel> news = [];
      for (var i in data["results"]) {
        news.add(NewsModel.fromJson(i));
      }
      return Right(news);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
