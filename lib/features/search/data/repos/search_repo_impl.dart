import 'package:either_dart/either.dart';
import 'package:news/core/networking/api_error_handler.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'package:news/features/search/data/repos/search_repo.dart';
import '../../../../core/networking/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<NewsModel>>> fetchSearchedNews(
      {required String search, required String country}) async {
    try {
      var data = await apiService.getCategory(q: search, country: country);
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
