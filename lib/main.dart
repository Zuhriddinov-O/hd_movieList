import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_01/pages/home_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF050B25),
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
            foregroundColor: CupertinoColors.white,
            centerTitle: true,
            iconTheme: IconThemeData(color: CupertinoColors.white),
            backgroundColor: Color(0xFF0A1649)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: HomePage(),
    );
  }
}
