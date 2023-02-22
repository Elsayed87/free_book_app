import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key,});
  //final BookModel bookModel;


  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: HomeViewBody(
       
      
      ),
    );
  }
}
