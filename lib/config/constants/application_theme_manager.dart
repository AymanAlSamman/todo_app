import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xff5D9CEC);

  //LIGHT*************************************

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xffDFECDB),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedItemColor: primaryColor,
        selectedIconTheme: IconThemeData(
          color: primaryColor,
          size: 38,
        ),
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Color(0xffC8C9CB),
          size: 30,
        )),

    // ADD BUTTON *******************************
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Colors.white,
              width: 4,
            ))),

    //BottomAppBarTheme *************************
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
      padding: EdgeInsets.zero,
    ),

    //TextTheme *******************************
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );

  //DARK **************************************
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xff060E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      selectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 38,
      ),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC8C9CB),
        size: 30,
      ),
    ),

    // ADD BUTTON *******************************
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            width: 5,
            color: Color(0xff141922),
          )),
    ),

    //BottomAppBarTheme *************************
    bottomAppBarTheme: BottomAppBarTheme(
      color: Color(0xff060E1E),
      padding: EdgeInsets.zero,
    ),

    //TextTheme *******************************
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
  );
}
