import 'package:flutter/material.dart';
import 'package:netflix_redesign/core/constans/colors.dart';

class Styles {
  static TextStyle kHeaderTitle = const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, fontFamily: 'Nexa', color: AppColors.kTextColor);
  static TextStyle kHeaderSubtitle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static const TextStyle kSearchHint = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColors.kShadeColor,
  );
  static TextStyle kSectionTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
// special for you
  static TextStyle kCategoryTitle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static TextStyle kMovieTitle = const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, fontFamily: 'Nexa', color: AppColors.kTextColor);
  static TextStyle kMovieTags = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
// movie rating with black color
  static TextStyle kMovieRating = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static TextStyle kMovieGenre = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static TextStyle kMovieWatch = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static TextStyle kSpecial = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.kTextColor,
  );
  static TextStyle kSectionMovieTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Nexa',
    color: AppColors.kTextColor,
  );

  static TextStyle kSectionMovieSubtitle = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColors.kSoftShadeColor,
  );

  static TextStyle kErrorText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Nexa',
    color: AppColors.AppColors.kPrimaryColor,
  );
}
