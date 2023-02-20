import 'package:bookly_app/core/utils/app_color.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBookItem extends StatelessWidget {
   const  RatingBookItem(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count,
      required this.rating});
  final MainAxisAlignment mainAxisAlignment;
  final int ?count;
  final num ?rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
         const Icon(
          FontAwesomeIcons.solidStar,
          color: AppColor.kStarColor,
          size: 14.0,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: AppStyles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "(${count.toString()})",
            style:
                AppStyles.textStyle14.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
