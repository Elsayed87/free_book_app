import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/listview_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: const [
                  CustomBookDetailsAppBar(),
                  SizedBox(
                    height: 30,
                  ),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  ListViewBooksSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
