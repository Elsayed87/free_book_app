part of 'serach_cubit.dart';

abstract class SerachState extends Equatable {
  const SerachState();

  @override
  List<Object> get props => [];
}

class SerachInitial extends SerachState {}

class SerachLoading extends SerachState {}

class SerachFailure extends SerachState {
  final String errMessage;

  const SerachFailure(this.errMessage);
}

class SerachSucsses extends SerachState {
  final List<BookModel> books;

 const  SerachSucsses(this.books);
}
