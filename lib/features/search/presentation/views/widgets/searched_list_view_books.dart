import 'package:bookly_app/features/home/presentation/views/widgets/bestsellerlistview_item.dart';
import 'package:flutter/material.dart';

class SearchedListViewBooks extends StatelessWidget {
  const SearchedListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 30,
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("data"),
            //NewestBooksListViewItem(),
          );
        },
      ),
    );
  }
}
