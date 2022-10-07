import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ns_connect/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ns Connect',
      debugShowCheckedModeBanner: false,
      //theme: _buildTheme(Brightness.light),
      home: Login()
    );
  }
  // ThemeData _buildTheme(brightness) {
  // var baseTheme = ThemeData(brightness: brightness);

  // return baseTheme.copyWith(
  //   textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  // );
//}
}
