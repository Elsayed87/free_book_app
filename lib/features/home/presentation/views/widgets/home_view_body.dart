import 'package:bookly_app/core/utils/app_string.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, });


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:const  BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const  [
           CustomAppBar(),
           FeaturedListViewItem(),
           SizedBox(
            height: 51,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              AppString.homeTitle,
              style: AppStyles.textStyle18,
            ),
          ),
           SizedBox(
            height: 20,
          ),
           CustomNewestBooksListView(),
        ],
      ),
    );
  }
}
