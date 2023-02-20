// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({
    required this.apiService,
  });
 
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    const String endPoint =
        "volumes?filtering=free-ebooks&sorting=newest&q=computer science";
    try {
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> books = [];

      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    const String endPoint =
        "volumes?filtering=free-ebooks&q=subject:programming";
    try {
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> books = [];

      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
