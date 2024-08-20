import 'package:news/features/home/data/models/NewsModel.dart';

import '../../../../core/networking/api_error_handler.dart';
import 'package:either_dart/either.dart';


abstract class SearchRepo {
  Future<Either<Failures, List<NewsModel>>> fetchSearchedNews(
      {required String search,required String country});
}