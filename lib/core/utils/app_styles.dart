import 'package:bookly_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const textStyle14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    fontFamily: kGTsectraFine,
  );
  static const textStyleN20 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.normal,
    fontFamily: kGTsectraFine,
  );
}

//
// w100 → const FontWeight
// Thin, the least thick
// FontWeight._(0, 100)
// w200 → const FontWeight
// Extra-light
// FontWeight._(1, 200)
// w300 → const FontWeight
// Light
// FontWeight._(2, 300)
// w400 → const FontWeight
// Normal / regular / plain
// FontWeight._(3, 400)
// w500 → const FontWeight
// Medium
// FontWeight._(4, 500)
// w600 → const FontWeight
// Semi-bold
// FontWeight._(5, 600)
// w700 → const FontWeight
// Bold
// FontWeight._(6, 700)
// w800 → const FontWeight
// Extra-bold
// FontWeight._(7, 800)
// w900 → const FontWeight
// Black, the most thick
// FontWeight._(8, 900)
