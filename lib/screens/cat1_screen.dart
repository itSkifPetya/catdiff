import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fcknchat/style.dart';

class CatChooseScreen extends StatefulWidget {
  const CatChooseScreen({Key? key}) : super(key: key);

  @override
  State<CatChooseScreen> createState() => _CatChooseScreenState();
}

class _CatChooseScreenState extends State<CatChooseScreen> {
  late double category;

  @override
  Widget build(BuildContext context) {
    double buttonSizeWidth = (MediaQuery.of(context).size.width - 178) / 3;
    double buttonSizeHeight = 35;
    return Scaffold(
      body: Stack(
        children: [
          Container( /// Blured background
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
          Center( /// Main body
                    child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 229,
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
                            padding: const EdgeInsets.all(25.0), child: Column(

                          children: [
                            Row( /// Header
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff006FFD),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),

                                  ),
                                  child:
                                      IconButton(onPressed: () {
                                        Navigator.pushNamed(context, "home");
                                      }, icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,), style: IconButton.styleFrom(),),

                                ),
                                 Text('Прежде, чем начать', style: TextStyle(fontWeight: FontWeight.w900, fontSize: Sizes().h1TextSize),textAlign: TextAlign.center,),
                                const SizedBox(width: 20,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text('На какую категорию вы рассчитываете?', style: TextStyle(fontSize: Sizes().h2TextSize, fontWeight: FontWeight.w700),),
                            const SizedBox(height: 16,),
                            Center(
                              child: Column( /// Buttons
                                children: [
                                  Row(children: [
                                    Padding(padding: const EdgeInsets.only(right: 12, bottom: 0), child: ElevatedButton(
                                      onPressed: () { /// First category
                                        Navigator.pushNamed(context, "first-category");
                                      }, style: ElevatedButton.styleFrom(
                                      minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      backgroundColor: const Color(0xffeaf2ff),
                                      onPrimary: const Color(0xff006FFD),
                                      shadowColor: Colors.transparent
                                    ), child: const Text('1'),
                                    )),
                                    Padding(padding: const EdgeInsets.only(left: 12, right: 12, bottom: 0), child: ElevatedButton(
                                        onPressed: () { /// Second category
                                          Navigator.pushNamed(context, "second-category");
                                        }, style: ElevatedButton.styleFrom(
                                        minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        backgroundColor: const Color(0xffeaf2ff),
                                        onPrimary: const Color(0xff006FFD),
                                        shadowColor: Colors.transparent
                                    ), child: const Text('2'),
                                    ),),
                                    Padding(padding: const EdgeInsets.only(left: 12, bottom: 0), child: ElevatedButton(
                                      onPressed: () { /// Third category
                                        Navigator.pushNamed(context, "third-category");
                                      }, style: ElevatedButton.styleFrom(
                                        minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        backgroundColor: const Color(0xffeaf2ff),
                                        onPrimary: const Color(0xff006FFD),
                                        shadowColor: Colors.transparent
                                    ), child: const Text('3'),
                                    ),)
                                  ],),
                                  Row(children: [
                                    Padding(padding: const EdgeInsets.only(right: 12, top: 0), child: ElevatedButton(
                                      onPressed: () { ///Fourth category
                                        Navigator.pushNamed(context, "fourth-category");
                                      }, style: ElevatedButton.styleFrom(
                                        minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        backgroundColor: const Color(0xffeaf2ff),
                                        onPrimary: const Color(0xff006FFD),
                                        shadowColor: Colors.transparent
                                    ), child: const Text('4'),
                                    ),),
                                    Padding(padding: const EdgeInsets.only(left: 12, right: 12, top: 0), child: ElevatedButton(
                                      onPressed: () { /// Fifth category
                                        Navigator.pushNamed(context, "fifth-category");
                                      }, style: ElevatedButton.styleFrom(
                                        minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        backgroundColor: const Color(0xffeaf2ff),
                                        onPrimary: const Color(0xff006FFD),
                                        shadowColor: Colors.transparent
                                    ), child: const Text('5'),
                                    ),),
                                    Padding(padding: const EdgeInsets.only(left: 12, top: 0), child: ElevatedButton(
                                      onPressed: () { /// Sixth category
                                        Navigator.pushNamed(context, "sixth-category");
                                      }, style: ElevatedButton.styleFrom(
                                        minimumSize: Size(buttonSizeWidth, buttonSizeHeight),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        backgroundColor: const Color(0xffeaf2ff),
                                        onPrimary: const Color(0xff006FFD),
                                        shadowColor: Colors.transparent
                                    ), child: const Text('6'),
                                    ),)
                                  ],)
                                ],
                              ),
                            ),
                          ],
                        ))),


              )
        ],
      ),
    );
  }
}
