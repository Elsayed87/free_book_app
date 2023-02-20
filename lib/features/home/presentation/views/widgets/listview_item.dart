import 'package:bookly_app/core/widgets/error_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_cuibt/cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listviewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, i) {
                  var book = state.books[i];

                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: CustomBookImage(
                        imgUrl: book.volumeInfo!.imageLinks!.thumbnail!),
                  );
                }),
          );
        } else if (state is FeaturedBookFaliure) {
          return CustomErrorWidget(message: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
