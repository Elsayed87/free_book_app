part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFaliure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFaliure(this.errMessage);
}

class SimilarBooksSucsses extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSucsses(this.books);
}
