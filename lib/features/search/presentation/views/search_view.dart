import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../viewModels/search_cubit/cubit/serach_cubit.dart';

class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
  });

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
   // BlocProvider.of<SerachCubit>(context).fetchSearchedBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SafeArea(
        child:  SearchViewBody(),
      ),
    );
  }
}
