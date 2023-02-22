import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchPageEmpty extends StatelessWidget {
  const SearchPageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Add the required book for searching....",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: AppStyles.textStyle14,
      ),
    );
  }
}
