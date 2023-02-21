import 'package:bookly_app/core/widgets/error_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/simailar_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listviewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimelarListViewBooks extends StatelessWidget {
  const SimelarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSucsses) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
          child: ListView.builder(
            itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return  Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: CustomBookImage(imgUrl: state.books[i].volumeInfo!.imageLinks!.thumbnail!),
                );
              }),
        );
      } else if (state is SimilarBooksFaliure) {
        return CustomErrorWidget(message: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
