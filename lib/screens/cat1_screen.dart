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
    return Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white
              ),
              child: Center(
                child: Text('Welcome to CatChooseScreen still not fragment..'),
              ),

    );
  }
}
