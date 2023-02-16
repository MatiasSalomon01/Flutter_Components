import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,
      //Color del AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //Color de Texto en Buttons
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      //Color de Fondo de Boton Flotante
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      //Estilo de elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary, elevation: 0, shape: StadiumBorder())));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}
