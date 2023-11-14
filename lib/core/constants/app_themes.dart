import 'package:rms/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes {
  static ThemeData themeEnglish = ThemeData(
    primaryColor: AppColors.materialPrimary,
    scaffoldBackgroundColor: AppColors.white,
    splashColor: AppColors.materialPrimary.shade200,
    canvasColor: AppColors.white,
    iconTheme: const IconThemeData(
      color: AppColors.gray,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.materialPrimary,
      backgroundColor: AppColors.materialPrimary.shade50,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.aleo(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      headlineMedium: GoogleFonts.aleo(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      headlineSmall: GoogleFonts.aleo(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.primary,
      ),
      titleLarge: GoogleFonts.bitter(
        // AppBar
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      titleMedium: GoogleFonts.lato(// TODO  CHANGE TO bitter OR FIX
        // TextField
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      titleSmall: GoogleFonts.bitter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 18,
        color: AppColors.gray,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.poppins(
        // Text, NavBarItems
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.gray,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: GoogleFonts.montserrat(
        fontSize: 18,
        color: AppColors.gray,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.montserrat(
        fontSize: 14,
        color: AppColors.gray.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      ),
      labelLarge: GoogleFonts.alegreya(
        // Button
        fontSize: 20,
        color: AppColors.gray,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: GoogleFonts.lato(
        fontSize: 14,
        color: AppColors.secondary1,
        fontWeight: FontWeight.w900,
      ),
      labelSmall: GoogleFonts.lato(
        fontSize: 14,
        color: AppColors.gray,
        fontWeight: FontWeight.w800,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.gray,
      ),
      elevation: 2,
      scrolledUnderElevation: 0,
      titleSpacing: 1,
    ),
    indicatorColor: AppColors.materialPrimary.shade600,
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    timePickerTheme: const TimePickerThemeData(),
  );
  static ThemeData themeArabic = ThemeData(
    primaryColor: AppColors.materialPrimary,
    scaffoldBackgroundColor: AppColors.white,
    splashColor: AppColors.materialPrimary.shade200,
    canvasColor: AppColors.white,
    iconTheme: const IconThemeData(
      color: AppColors.gray,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.materialPrimary,
      backgroundColor: AppColors.materialPrimary.shade50,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.cairo(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.primary,
      ),
      headlineMedium: GoogleFonts.cairo(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      headlineSmall: GoogleFonts.cairo(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: AppColors.primary,
      ),
      titleLarge: GoogleFonts.notoSansArabic(
        // AppBar
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.primary,
      ),
      titleMedium: GoogleFonts.montserrat(
        // TextField
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      titleSmall: GoogleFonts.notoSansArabic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      bodyLarge: GoogleFonts.tajawal(
        fontSize: 18,
        color: AppColors.gray,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.tajawal(
        // Text, NavBarItems
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.tajawal(
        fontSize: 14,
        color: AppColors.gray,
        fontWeight: FontWeight.w700,
      ),
      displayLarge: GoogleFonts.montserrat(
        fontSize: 18,
        color: AppColors.gray,
        fontWeight: FontWeight.w800,
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.w800,
      ),
      displaySmall: GoogleFonts.montserrat(
        fontSize: 14,
        color: AppColors.gray,
        fontWeight: FontWeight.w800,
      ),
      labelLarge: GoogleFonts.montserrat(
        // Buttons
        fontSize: 18,
        color: AppColors.gray,
        fontWeight: FontWeight.w800,
      ),
      labelMedium: GoogleFonts.cairo(
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.w900,
      ),
      labelSmall: GoogleFonts.montserrat(
        fontSize: 14,
        color: AppColors.gray,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.gray,
      ),
      elevation: 2,
      scrolledUnderElevation: 0,
      titleSpacing: 1,
    ),
    indicatorColor: AppColors.materialPrimary.shade600,
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    timePickerTheme: const TimePickerThemeData(),
  );
}

/*
  TODO Arabic Fonts
    for titles:
      1- cairo
      2- notoSansArabic
      3- notoNaskhArabic
    for content:
      1- tajawal: awesome for variance
      2- montserrat: formal for reading

  TODO English Fonts
    for titles:
      1- arapey
      2- bitter
      3- brawler
      4- notoSans
      5- aleo
      6- merriweather
      7- alegreya
    for content:
      1- nunito:
      2- montserrat:
      3- openSans:
      4- lato:
      5- mulish:
      6- roboto:


 */
