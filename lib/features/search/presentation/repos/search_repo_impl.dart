// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/repos/search_repo.dart';
import 'package:dio/dio.dart';

import '../service/searchservice.dart';

class SearchRepoImpl implements SearchRepo {
  ApiSearchService apiSearchService;
  SearchRepoImpl({
    required this.apiSearchService,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String bookName}) async {
 


    try {
      var data =  await apiSearchService.get(query: {
      'Filtering': 'free-ebooks',
      'q': 'intitle=$bookName',
    });
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
