import 'package:dio/dio.dart';
import 'package:news/core/networking/api_consts.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getHeadlines({required String country}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.latest}&apiKey=${ApiConsts.apiKey}&country=$country');
    return response.data;
  }

  Future<Map<String, dynamic>> getCategory({required String q,required String country}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.news}apiKey=${ApiConsts.apiKey}&q=$q&country=$country');
    return response.data;
  }

  Future<Map<String, dynamic>> getSearch({required String q,required String country}) async {
    var response = await _dio.get(
        '${ApiConsts.apiBaseUrl}${ApiConsts.news}apiKey=${ApiConsts.apiKey}&q=$q&country=$country');
    return response.data;
  }
}
