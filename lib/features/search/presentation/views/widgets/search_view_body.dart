import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/search/presentation/viewModels/search_cubit/cubit/serach_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_page_empty.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_textField.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/searched_list_view_books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    super.initState();
    SerachCubit.get(context).searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    SerachCubit.get(context).searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Serach Result",
            style: AppStyles.textStyle16,
          ),
          const SizedBox(
            height: 20,
          ),
          SerachCubit.get(context).searchController.text.isNotEmpty
              ? const SearchedListViewBooks()
              : const SearchPageEmpty(),
        ],
      ),
    );
  }
}
