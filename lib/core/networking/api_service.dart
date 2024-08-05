import 'package:dio/dio.dart';
import 'package:news/core/networking/api_consts.dart';

class ApiService{
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endPoint , required String country}) async{
    var response = await _dio.get('${ApiConsts.apiBaseUrl}${endPoint}country=$country&${ApiConsts.apiKey}');
    return response.data;
  }
}