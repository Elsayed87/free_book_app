import 'package:bookly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../viewModels/search_cubit/cubit/serach_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SerachCubit.get(context).searchController,
      onEditingComplete: () {
        if (SerachCubit.get(context).searchController.text.isNotEmpty) {
          SerachCubit.get(context).fetchSearchedBooks(
            bookName: SerachCubit.get(context).searchController.text,
          );
        }
        SerachCubit.get(context).fetchSearchedBooks(
          bookName: SerachCubit.get(context).searchController.text,
        );
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            SerachCubit.get(context).fetchSearchedBooks(
              bookName: SerachCubit.get(context).searchController.text,
            );
          },
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        ),
        enabledBorder: buildTextFieldInputBorder(),
        focusedBorder: buildTextFieldInputBorder(),
      ),
    );
  }

  buildTextFieldInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.kAuthorColor),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
