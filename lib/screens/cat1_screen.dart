import 'package:fcknchat/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class CatChooseScreen extends StatefulWidget {
  const CatChooseScreen({Key? key}) : super(key: key);

  @override
  State<CatChooseScreen> createState() => _CatChooseScreenState();
}

class _CatChooseScreenState extends State<CatChooseScreen> {
  late double category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 310,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
