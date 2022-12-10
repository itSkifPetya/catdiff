import 'dart:collection';
import 'dart:ui';

import 'package:fcknchat/screens/cat1_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Inter',
      ),
      home: const LowLevel(),
    );
  }
}

class LowLevel extends StatefulWidget {
  const LowLevel({Key? key}) : super(key: key);

  @override
  State<LowLevel> createState() => _LowLevelState();
}

class _LowLevelState extends State<LowLevel> {
  late BuildContext _buildContext;

  final Queue<BuildContext> _queue = Queue();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_queue.isNotEmpty) {
          Navigator.of(_queue.removeLast()).pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background_img.jpg"),
                      fit: BoxFit.cover)),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                  //color: Colors.white.withOpacity(0.0)
                              )
                          )
                      ),
            ),
            Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(builder: (context) {
                  _buildContext = context;
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CatChooseScreen()));
                      _queue.addLast(context);
                    },
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: MediaQuery.of(context).size.height - 300,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              const Text('Добро пожаловать!', style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                fontSize: 20
                              ),),
                              Padding(padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                     child: ElevatedButton(onPressed: () {
                                       Navigator.of(_buildContext).push(MaterialPageRoute(builder: (context) => const CatChooseScreen()));
                                     },child: const Text('Some button')),

                                     /*child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(_buildContext).push(MaterialPageRoute(builder: (context) => const CatChooseScreen()));
                                          _queue.addLast(_buildContext);
                                        }
                                    ),*/

                                    
                                  
                              /*ElevatedButton(onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CatChooseScreen()));
                              },child: const Text('Some button')),*/)
                            ],
                          ),
                        ),
                      ),
                    ),

                    /*Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 200,
                              width: 310,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        child: Text('Добро пожаловать', style: TextStyle(fontFamily: 'Inter'),)),
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                        child: Navigator(
                                          onGenerateRoute: (settings) {
                                            return MaterialPageRoute(builder: (context) {
                                              _buildContext = context;
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.of(_buildContext).push(MaterialPageRoute(builder: (context) => const CatChooseScreen()));
                                                  _queue.addLast(_buildContext);
                                                },
                                                child: const Center(
                                                  child: Text('Категорирование'),
                                                ),
                                              );
                                            });
                                          },
                                        )
                                      ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                      child: Text('Войти в сеть'),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),*/
                  );
                });
              },
            )


              ],
            ),
      )
        ),
     );
  }
}

