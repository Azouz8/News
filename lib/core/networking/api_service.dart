import 'package:dio/dio.dart';
import 'package:news/core/networking/api_consts.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getHeadlines() async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.latest}&apiKey=${ApiConsts.apiKey}&language=en');
    return response.data;
  }

  Future<Map<String, dynamic>> getCategory(
      {required String q}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.news}apiKey=${ApiConsts.apiKey}&q=$q&language=en');
    return response.data;
  }
}
