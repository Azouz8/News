import 'package:either_dart/either.dart';
import 'package:news/core/networking/api_error_handler.dart';
import 'package:news/features/home/data/models/NewsModel.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<NewsModel>>> fetchLatestNews({required String country});

  Future<Either<Failures, List<NewsModel>>> fetchNewsCategory(
      {required String category,required String country});
}
