import 'package:dio/dio.dart';

class ApiSearchService {
  final _baseUrl = "https://www.googleapis.com/books/v1/volumes";
 
  final Dio _dio;

  ApiSearchService(this._dio);
  Future<Map<String, dynamic>> get(
      { Map<String, dynamic>? query}) async {
   
    var response = await _dio.get(
    _baseUrl,
      queryParameters: query,
    );
    return response.data;
  }
}


