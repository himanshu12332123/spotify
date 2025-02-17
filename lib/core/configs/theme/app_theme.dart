import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme{

  static final lightTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.lightBackground,
  brightness: Brightness.light,
  fontFamily: 'Satoshi',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      elevation: 0,
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30),
      )
    )
  )

  );

  static final darkTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  brightness: Brightness.dark,
  fontFamily: 'Satoshi',
  inputDecorationTheme:  InputDecorationTheme(
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.white,
              width: 0.4,
            )
          ),
        ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      elevation: 0,
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        
      ),
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30),
      )
    )
  )

  );
}