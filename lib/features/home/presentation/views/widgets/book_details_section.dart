import 'package:bookly_app/core/utils/app_color.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listviewitem.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/ratingbook_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

const url =
    "https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZ3JhbW1lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child: CustomBookImage(
              imgUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ""),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo?.title ?? "",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: AppStyles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? "",
          textAlign: TextAlign.center,
          style: AppStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: AppColor.whiteOpacity.withOpacity(.7),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        RatingBookItem(
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookActionButton(),
      ],
    );
  }
}
