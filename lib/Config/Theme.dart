import 'package:flutter/material.dart';
import 'package:news_app/Config/Colors.dart';

// lightTheme
var lightTheme = ThemeData(
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    fillColor: lightBgColor,
    filled: true,
    enabledBorder: InputBorder.none,
    prefixIconColor: lightLableColor,
    labelStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w500
    ),
    hintStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w500
    ),
  ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: lightBgColor,
      onPrimary: lightFontColor, // Replace 'L' with a defined color
      secondary: lightDivColor, // Replace 'secondary' with a defined color
      onSecondary: lightPrimaryColor, // Replace 'onSecondary' with a defined color
      error: Colors.red, // Replace 'error' with your desired error color
      onError: Colors.white, // Replace 'onError' with a defined color
      surface: lightDivColor, // Replace 'surface' with a defined color
      onSurface: lightFontColor, // Replace 'onSurface' with a defined color
    ),
   textTheme: const TextTheme(
     headlineLarge: TextStyle(
       fontFamily: "Poppins",
       fontSize: 20,
       color: lightFontColor,
       fontWeight: FontWeight.w600
     ),
     headlineMedium: TextStyle(
       fontFamily: "Poppins",
       fontSize: 18,
       color: lightFontColor,
       fontWeight: FontWeight.w600,
     ),
     headlineSmall: TextStyle(
       fontFamily: "Poppins",
       fontSize: 15,
       color: lightFontColor,
       fontWeight: FontWeight.w600,
     ),
     bodyLarge: TextStyle(
       fontFamily: "Poppins",
       fontSize: 16,
       color: lightFontColor,
       fontWeight: FontWeight.w500
     ),
     bodyMedium: TextStyle(
       fontFamily: "Poppins",
       fontSize: 15,
       color: lightFontColor,
       fontWeight: FontWeight.w400
     ),
     bodySmall: TextStyle(
       fontFamily: "Poppins",
       fontSize: 13,
       color: lightFontColor,
       fontWeight: FontWeight.w500,
     ),
     labelSmall: TextStyle(
       fontFamily: "Poppins",
       fontSize: 13,
       color: lightLableColor,
       fontWeight: FontWeight.w300
     )
   )
);

// darkTheme
var darkTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: darkBgColor,
      filled: true,
      enabledBorder: InputBorder.none,
      prefixIconColor: darkLableColor,
      labelStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          color: darkFontColor,
          fontWeight: FontWeight.w500
      ),
      hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          color: darkFontColor,
          fontWeight: FontWeight.w500
      ),
    ),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: darkPrimaryColor,
      onPrimary: darkFontColor, // Replace 'L' with a defined color
      primaryContainer: darkBgColor ,
      secondary: darkLableColor, // Replace 'secondary' with a defined color
      onSecondary: darkPrimaryColor, // Replace 'onSecondary' with a defined color
      error: Colors.red, // Replace 'error' with your desired error color
      onError: Colors.white, // Replace 'onError' with a defined color
      surface: darkDivColor, // Replace 'surface' with a defined color
      onSurface: darkFontColor, // Replace 'onSurface' with a defined color
    ),
    textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            color: darkFontColor,
            fontWeight: FontWeight.w600
        ),
        headlineSmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          color: darkFontColor,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            color: darkFontColor,
            fontWeight: FontWeight.w500
        ),
        bodyMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            color: darkFontColor,
            fontWeight: FontWeight.w400
        ),
        bodySmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 13,
          color: darkFontColor,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 13,
            color: darkLableColor,
            fontWeight: FontWeight.w300
        )
    )
);