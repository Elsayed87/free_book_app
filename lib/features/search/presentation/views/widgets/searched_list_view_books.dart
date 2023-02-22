import 'package:bookly_app/core/widgets/error_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/newestbookscubit/cubit/newestbooks_cubit.dart';
import 'package:bookly_app/features/search/presentation/viewModels/search_cubit/cubit/serach_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/bestsellerlistview_item.dart';

class SearchedListViewBooks extends StatelessWidget {
  const SearchedListViewBooks({
    super.key,
  });
  // final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerachCubit, SerachState>(
        builder: (context, state) {
      if (state is SerachSucsses) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.books.length,
            //physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewestBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          ),
        );
      } else if (state is SerachFailure) {
        return CustomErrorWidget(message: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
