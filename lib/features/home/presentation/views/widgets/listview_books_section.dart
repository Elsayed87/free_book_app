import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_listview_books.dart';
import 'package:flutter/material.dart';

class ListViewBooksSection extends StatelessWidget {
  const ListViewBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You can also like",
            style: AppStyles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimelarListViewBooks(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
