part of 'featured_book_cubit.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookFaliure extends FeaturedBookState {
  final String errorMessage;

  const FeaturedBookFaliure(this.errorMessage);
}

class FeaturedBookSucces extends FeaturedBookState {
  final List<BookModel> books;

 const  FeaturedBookSucces(this.books);

}
