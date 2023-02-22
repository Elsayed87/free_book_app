import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/app_string.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, right: 30, left: 30),
      child: Row(
        children: [
          Image.asset(
            AppString.logoPath,
            height: 16.1,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView,);
            },
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
