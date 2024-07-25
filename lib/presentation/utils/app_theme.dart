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
    colorScheme:
        ColorScheme.fromSeed(seedColor: AppColors.green.withOpacity(.6)),
    useMaterial3: true,
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
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.blue,
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        side: WidgetStateProperty.resolveWith<BorderSide?>(
          (states) => const BorderSide(
            color: AppColors.black,
          ),
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
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
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.blue,
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.black,
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => AppColors.white,
        ),
        side: WidgetStateProperty.resolveWith<BorderSide?>(
          (states) => const BorderSide(
            color: AppColors.white,
          ),
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (states) => const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
