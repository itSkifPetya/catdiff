import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fcknchat/style.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container( /* Blured Background */
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background_img.jpg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Container(
                color: Colors.white.withOpacity(0.02),
              ),
            ),
          ),
          Center( /* Main body */
              child: Column(
                children: [
                  Flexible(flex: 375,child: Container(),),
                  Flexible(
                    flex: 300,
                    child: Container(
            width: MediaQuery.of(context).size.width - 80,
            ///height: 245,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            offset: const Offset(2.5, 2.5)
                        )
                      ]
            ),
            child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text(
                          'Добро пожаловать!',
                          style: TextStyle(fontSize: Sizes().h1TextSize, fontWeight: FontWeight.w900),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "choose-category");
                                  /*MaterialPageRoute(
                                      builder: (context) => const CatChooseScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff006FFD),
                              onPrimary: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width - 130, 60),
                              shadowColor: Colors.transparent
                              /*side: BorderSide(
                                    color: Colors.blue,
                                    width: 1
                                ),*/
                            ),
                            child: Text(
                              'Категорировать маршрут',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize),
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xff006FFD), backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                minimumSize:
                                    Size(MediaQuery.of(context).size.width - 130, 60),
                                shadowColor: Colors.transparent,
                                side: const BorderSide(color: Color(0xff97979B), width: 1)),
                            child: Text(
                              'Войти в сеть',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize),
                            ))
                      ],
                    ),
            ),
          ),
                  ),
                  Flexible(flex: 375,child: Container(),),
                ],
              ))
        ],
      ),
    );
  }
}
