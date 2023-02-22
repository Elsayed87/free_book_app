import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/search/presentation/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/search/presentation/service/searchservice.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<ApiSearchService>(ApiSearchService(Dio()));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(apiSearchService: getIt.get<ApiSearchService>()));
}
