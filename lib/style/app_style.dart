import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_color.dart';

class AppStyle {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(
        fontSize: 36.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'jant'
      ),
      labelMedium:TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.gold,
        fontFamily: 'jant',),
      headlineLarge:TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'jant'
      ),
      labelSmall:TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'jant',),
      titleLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'jant'
      ),
      titleMedium: TextStyle(
        color: AppColors.lightPrimary,
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
      ),
      //,
           
      titleSmall: TextStyle(
        color: AppColors.lightPrimary,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'jant'
      ),
      headlineMedium: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'jant'
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: AppColors.lightPrimary,
      labelStyle: TextStyle(
        fontFamily: 'Exo',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 27.sp,
      ),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50.r),
          bottomLeft: Radius.circular(50.r),
        ),
      ),
      titleTextStyle: TextStyle(
        fontFamily: "Exo",
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 22.sp,
      ),
      
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightPrimary,
        primary: AppColors.lightPrimary,
        secondary: AppColors.gold),
  );
}
