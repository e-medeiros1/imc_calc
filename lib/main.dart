import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imccalc/screens/imc_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF202020),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF181818),
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF616161),
        ),
      ),
      home: const ImcScreen(),
    );
  }
}
