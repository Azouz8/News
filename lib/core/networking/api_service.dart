import 'package:dio/dio.dart';
import 'package:news/core/networking/api_consts.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getHeadlines(
      {required String country}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.topHeadlines}country=$country&apiKey=${ApiConsts.apiKey}');
    return response.data;
  }
  Future<Map<String, dynamic>> getEverything(
      {required String q , required String country}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.everyThing}q=$q&apiKey=${ApiConsts.apiKey}');
    return response.data;
  }
}
