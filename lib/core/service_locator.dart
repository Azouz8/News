import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news/core/networking/api_service.dart';
import 'package:news/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt<ApiService>()));
}