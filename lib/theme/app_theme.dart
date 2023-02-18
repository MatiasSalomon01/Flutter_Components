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
              backgroundColor: primary, elevation: 0, shape: const StadiumBorder())),

      //Estilo de Input de TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary,),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary,),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary,),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        border: OutlineInputBorder(
          //borderSide: BorderSide(color: primary,),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
      ),      
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}
