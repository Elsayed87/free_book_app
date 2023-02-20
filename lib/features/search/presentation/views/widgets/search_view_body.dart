import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestsellerlistview_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_textField.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/searched_list_view_books.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 20,
          ),
          SearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Serach Result",
            style: AppStyles.textStyle16,
          ),
          SizedBox(
            height: 20,
          ),
          SearchedListViewBooks(),
        ],
      ),
    );
  }
}
