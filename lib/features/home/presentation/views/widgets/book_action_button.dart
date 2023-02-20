import 'package:bookly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_button.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37.0),
      child: Row(
        children: const [
          Expanded(
            child: AppButton(
              fSize: 18,
              fColor: AppColor.kBlacColor,
              backgroundColor: Colors.white,
              text: "19.99€",
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          Expanded(
            child: AppButton(
              fSize: 16,
              backgroundColor: AppColor.kButtonBackground,
              text: "Free preview",
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          )
        ],
      ),
    );
  }
}
