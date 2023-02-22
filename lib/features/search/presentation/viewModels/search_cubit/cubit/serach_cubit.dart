import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'serach_state.dart';

class SerachCubit extends Cubit<SerachState> {
  SerachCubit(this.searchRepo) : super(SerachInitial());
  final SearchRepo searchRepo;
   static SerachCubit get(BuildContext context) => BlocProvider.of(context);
  Future<void> fetchSearchedBooks({required String bookName}) async {
    emit(SerachLoading());
    var result = await searchRepo.fetchSearchBooks(bookName: bookName);
    result.fold((failure) {
      emit(SerachFailure(failure.errorMessage));
    }, (books) {
      emit(SerachSucsses(books));
    });
  }
    TextEditingController searchController = TextEditingController();
}
