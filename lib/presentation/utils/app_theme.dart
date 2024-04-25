import 'package:dev_folio/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static var bebasNeueTextStyle =
      GoogleFonts.bebasNeue(color: AppColors.purpleGrey);

  static var aBeeZeeTextStyle =
      GoogleFonts.aBeeZee(color: AppColors.purpleGrey);

  static var poppinsTextStyle =
      GoogleFonts.poppins(color: AppColors.purpleGrey);

  static ThemeData appLightTheme = ThemeData(
    // useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
      elevation: 0,
    ),
    scaffoldBackgroundColor: AppColors.white,
    // fontFamily: myGFontTextStyle,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.black),
      titleLarge: TextStyle(color: AppColors.black),
      bodyMedium: TextStyle(color: AppColors.black),
      displaySmall: TextStyle(color: AppColors.black),
    ),

    //* elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.blue,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        side: MaterialStateProperty.resolveWith<BorderSide?>(
          (states) => const BorderSide(
            color: AppColors.black,
          ),
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );

  static ThemeData appDarkTheme = ThemeData(
    // useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black,
      surfaceTintColor: AppColors.black,
      elevation: 0,
    ),
    scaffoldBackgroundColor: AppColors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.white),
      titleLarge: TextStyle(color: AppColors.white),
      bodyMedium: TextStyle(color: AppColors.white),
      displaySmall: TextStyle(color: AppColors.white),
    ),
    //* elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.blue,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        side: MaterialStateProperty.resolveWith<BorderSide?>(
          (states) => const BorderSide(
            color: AppColors.white,
          ),
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
