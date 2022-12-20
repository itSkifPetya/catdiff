import 'package:fcknchat/categories/c1First.dart';
import 'package:fcknchat/categories/c2Second.dart';
import 'package:fcknchat/categories/c3Third.dart';
import 'package:fcknchat/categories/c4Fourth.dart';
import 'package:fcknchat/categories/c5Fifth.dart';
import 'package:fcknchat/categories/c6Sixth.dart';
import 'package:fcknchat/screens/cat1_screen.dart';
import 'package:fcknchat/screens/ending_screen.dart';
import 'package:fcknchat/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Inter',

      ),
      home: const StartScreen(),
      routes: <String, WidgetBuilder>{
        "home": (context) => const StartScreen(),
        "choose-category": (context) => const CatChooseScreen(),
        "first-category": (context) => const FirstCategory(),
        "second-category": (context) => const SecondCategory(),
        "third-category": (context) => const ThirdCategory(),
        "fourth-category": (context) => const FourthCategory(),
        "fifth-category": (context) => const FifthCategory(),
        "sixth-category": (context) => const SixthCategory(),
        "ending-screen": (context) => const EndingScreen()
      },
    );
  }
}

