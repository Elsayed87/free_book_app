import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message,style: AppStyles.textStyle16,));
  }
}
