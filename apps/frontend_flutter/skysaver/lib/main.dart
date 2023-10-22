import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skysaver/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sky Saver',
      home: const HomeView(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
        cardColor: const Color(0xffffffff),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff5474ff),
          background: const Color(0xffffffff),
          surface: const Color(0xfffcfcfc),
          surfaceTint: const Color(0xffffffff),
        ),
        dividerTheme: const DividerThemeData(
          color: Color(0xfff3f4f6),
          thickness: 2,
        ),
        focusColor: const Color(0xfff9fafb),
      ),
    );
  }
}
