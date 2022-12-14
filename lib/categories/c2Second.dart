import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../style.dart';

class SecondCategory extends StatefulWidget {
  const SecondCategory({Key? key}) : super(key: key);

  @override
  State<SecondCategory> createState() => _SecondCategoryState();
}

class _SecondCategoryState extends State<SecondCategory> {
  final _selectedRegionController = TextEditingController();
  final _kilometersController = TextEditingController();
  double kilometersSlideValue = 100;
  double heightSlideValue = 5;
  String? selectedRegion;
  int perepravNK = 0;
  int pereprav1A = 0;
  int perevalNK = 0;
  int pereval1A = 0;
  int vershinNK = 0;
  int grebenNK = 0;
  int canyonNKand1A = 0;
  bool water = false;

  @override
  Widget build(BuildContext context) {
    double buttonSizeWidth = (MediaQuery.of(context).size.width - 178) / 3;
    double buttonSizeHeight = 35;
    return Scaffold(
      body: Stack(
        children: [
          Container( /// Blurred background
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
          Center(
              child: Column(
                children: [
                  Flexible(flex: 85, child: Container()),
                  Flexible(
                    flex: 1500,
                    child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff006FFD),
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(15))),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "choose-category");
                                        },
                                        icon: const Icon(
                                          Icons.arrow_back_ios_new_sharp,
                                          color: Colors.white,
                                        ),
                                        style: IconButton.styleFrom(),
                                      ),
                                    ),
                                    Text(
                                      '??????????????????????????????',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900, fontSize: Sizes().h1TextSize),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(width: 40)
                                  ],
                                ), /// ???????????? ?????????? + "??????????????????????????????"
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      '???????????????? ???????????? ????????????????',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ), /// "???????????????? ???????????? ????????????????"
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: SearchField(
                                    hint: '????????????',
                                    searchInputDecoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff006FFD),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: const Color(0xff006FFD).withOpacity(1),
                                                width: 0.5
                                            ),
                                            borderRadius: const BorderRadius.all(Radius.circular(10))
                                        )
                                    ),
                                    suggestionsDecoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: const Color(0xff006FFD).withOpacity(0.1),
                                    ),
                                    suggestions: const [
                                      '?????????????????? ??????????????',
                                      '??????????',
                                      '?????????????????????????? ??????????????',
                                      '?????????????????????? ????????????',
                                      '???????????????????????? ????????????',
                                      '????????????????????',
                                      '?????????????????????????????? ????????????',
                                      '?????????????????????? ????????????',
                                      '?????????????????? ????????????',
                                      '?????????????????? ????????',
                                      '???????????? ??????????',
                                      '?????????????????????? ????????????',
                                      '?????????????????????? ?????????? ????????????',
                                      '????????????????????',
                                      '???????????????? ????????????',
                                      '???????????????? ????????',
                                      '???????????????? ????????????',
                                      '???????????????? ????????',
                                      '???????????????? ????????-????????',
                                      '?????????? ????????????-????????????',
                                      '???????????????? ????????????',
                                      '??????????????????',
                                      '???????????????? (???????????????? ???????????? ????????????????)',
                                      '???????????????? (?????????????????? ?? ?????????????????? ????????????)',
                                      '???????????????? (?????????? ??????????)',
                                      '??????????????',
                                      '??????????????',
                                      '???????????????? ????????????????????',
                                      '?????????????????? ?????????????? ',
                                      '????????',
                                      '?????????????????? ????????????',
                                      '???????????????????? ?????????????? (??????.)',
                                      '???????????????????? ?????????????? (??????.)',
                                      '??????????????????????????, ?????????????????????? ??????.',
                                      '?????????????????????? ??????????????',
                                      '?????????????????????? ?????????? ',
                                      '?????????????? ????????????',
                                      '?????????? ??????????',
                                      '??????????',
                                      '????????????-????????',
                                      '?????????? ????????????????',
                                      '???????????????? ????????',
                                      '????????????????',
                                      '?????????????????????? ????????',
                                      '???????????????????? ????????',
                                      '???????????????????? ????????',
                                      '??????????????',
                                      '???????????????? ??????????',
                                      '???????????????? ?????????????????? ????????????',
                                      '???????????????? ????????-????????',
                                      '???????????????? ????????',
                                      '?????????????? ????????',
                                      '?????????????? ????????',
                                      '???????????????? ????????????',
                                      '??????????????',
                                      '?????????????????????? ????????',
                                      '??????????-??????????',
                                      '???????????? ??????????',
                                      '???????????? ????????????-??????????',
                                      '???????????? ????????????',
                                      '???????????? ????????????????',
                                      '?????????????????????? ????????????',
                                      '?????????????????????? ???????? ',
                                      '?????????????????????? ????????-????????',
                                      '??????????????',
                                      '?????????????????????? ????????????',
                                      '?????????? ????????'
                                    ],
                                    onTap: (value) {
                                      setState(() {
                                        selectedRegion = value;
                                      });
                                    },
                                    searchStyle: const TextStyle(),
                                    suggestionStyle: TextStyle(fontStyle: FontStyle.normal, fontSize: Sizes().h2TextSize),


                                  ),
                                ), /// Searchfield
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '????????????????????',
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize),
                                    ),
                                    Text('$kilometersSlideValue ????', style: TextStyle(fontStyle: FontStyle.normal, fontSize: Sizes().h2TextSize),)
                                  ],
                                ), /// "????????????????????" + ???????????????? ????????????????
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: const Color(0xff006FFD),
                                      activeTickMarkColor: const Color(0xff006FFD),
                                      overlayShape: SliderComponentShape.noOverlay,
                                    ),
                                    child: Slider(
                                      value: kilometersSlideValue,
                                      min: 80,
                                      max: 200,
                                      onChanged: (double value) {
                                        setState(() {
                                          kilometersSlideValue =
                                              double.parse((value).toStringAsFixed(1));
                                        });
                                      },

                                    ),
                                  ),
                                ), /// ?????????????? ??????????????????????
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '?????????????? ??????????',
                                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize),
                                    ),
                                    Text('$heightSlideValue ????', style: TextStyle(fontStyle: FontStyle.normal, fontSize: Sizes().h2TextSize),)
                                  ],
                                ), /// "?????????????? ??????????" + ???????????????? ????????????????
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: const Color(0xff006FFD),
                                      activeTickMarkColor: const Color(0xff006FFD),
                                      overlayShape: SliderComponentShape.noOverlay,
                                    ),
                                    child: Slider(
                                      value: heightSlideValue,
                                      min: 1,
                                      max: 16,
                                      onChanged: (double value) {
                                        setState(() {
                                          heightSlideValue =
                                              double.parse((value).toStringAsFixed(1));
                                        });
                                      },
                                    ),
                                  ),
                                ), /// ?????????????? ???????????????? ??????????
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                         Text('?????????????????? ??/??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (perepravNK >= 1) {
                                                setState(() {
                                                  perepravNK--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$perepravNK', style: const TextStyle(fontWeight: FontWeight.w600)
                                              ),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (perepravNK <= 7) {
                                                setState(() {
                                                  perepravNK++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('?????????????????? 1??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (pereprav1A >= 1) {
                                                setState(() {
                                                  pereprav1A--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$pereprav1A', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (pereprav1A <= 5) {
                                                setState(() {
                                                  pereprav1A++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ), /// ?????????????????? ??/?? + ?????????????????? 1??
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text('???????????????? ??/??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (perevalNK >= 1) {
                                                setState(() {
                                                  perevalNK--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$perevalNK', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (perevalNK <= 1) {
                                                setState(() {
                                                  perevalNK++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('???????????????? 1??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (pereval1A >= 1) {
                                                setState(() {
                                                  pereval1A--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$pereval1A', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (pereval1A <= 1) {
                                                setState(() {
                                                  pereval1A++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    ),

                                  ],
                                ), /// ???????????????? ??/?? + ???????????????? 1??
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text('?????????????? ??/??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (vershinNK >= 1) {
                                                setState(() {
                                                  vershinNK--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$vershinNK', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (vershinNK <= 1) {
                                                setState(() {
                                                  vershinNK++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('???????????? ??/??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (grebenNK >= 1) {
                                                setState(() {
                                                  grebenNK--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$grebenNK', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (grebenNK <= 1) {
                                                setState(() {
                                                  grebenNK++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ), /// ?????????????? ??/?? + ???????????? ??/??
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text('?????????????? ??/?? ?? 1??', style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Sizes().h2TextSize
                                        ),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: ()  {
                                              if (canyonNKand1A >= 1) {
                                                setState(() {
                                                  canyonNKand1A--;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('-', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),
                                            Container(
                                              width: 10,
                                              child: Text('$canyonNKand1A', style: const TextStyle(fontWeight: FontWeight.w600),),
                                            ),
                                            ElevatedButton(onPressed: ()  {
                                              if (canyonNKand1A <= 7) {
                                                setState(() {
                                                  canyonNKand1A++;
                                                });
                                              }
                                            }, style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: const Color(0xffeaf2ff)
                                            ), child: const Text('+', style: TextStyle(
                                                color: Color(0xff006FFD),
                                                fontSize: 25,
                                                fontStyle: FontStyle.normal
                                            ),),),

                                          ],
                                        )
                                      ],
                                    ),

                                  ],
                                ), /// ?????????????? ??/?? ?? 1??
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('???????????? ??????????????', style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: Sizes().h2TextSize
                                    ),),
                                    Switch(
                                        value: water,
                                        onChanged:(bool value) {
                                          setState(() {
                                            water = value;
                                          });
                                        }
                                    )
                                  ],
                                ), /// ???????????? ??????????????
                                const SizedBox(height: 8,),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "ending-screen");
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff006FFD),
                                      onPrimary: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(15))),
                                      minimumSize:
                                      const Size(double.maxFinite, 60),
                                      shadowColor: Colors.transparent
                                  ), child: Text(
                                    '???????????????????????????? ??????????????',
                                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: Sizes().h2TextSize)
                                ),
                                ),
                              ],
                            )
                        )
                    ),
                  ),
                  Flexible(flex: 85, child: Container()),
                ],
              )
          )
        ],
      ),
    );
  }
}
