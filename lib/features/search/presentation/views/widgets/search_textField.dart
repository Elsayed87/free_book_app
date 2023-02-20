import 'package:bookly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
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
