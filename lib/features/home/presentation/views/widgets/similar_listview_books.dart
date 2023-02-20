import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_listviewitem.dart';
import 'package:flutter/material.dart';

class SimelarListViewBooks extends StatelessWidget {
  const SimelarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return  const Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: CustomBookImage(imgUrl: url),
            );
          }),
    );
  }
}
