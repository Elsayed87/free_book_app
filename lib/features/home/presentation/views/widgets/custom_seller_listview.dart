import 'package:bookly_app/core/widgets/error_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/newestbookscubit/cubit/newestbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestsellerlistview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNewestBooksListView extends StatelessWidget {
  const CustomNewestBooksListView({super.key});
 // final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
        builder: (context, state) {
      if (state is NewestbooksSucsses) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: ListView.builder(
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewestBooksListViewItem(bookModel:state.books[index] ),
              );
            },
          ),
        );
      } else if (state is NewestbooksFailure) {
        return CustomErrorWidget(message: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
