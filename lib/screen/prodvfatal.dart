import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import '../main.dart';
import 'Podsk.dart';
String Str1="---";

class Prodvfatal extends StatefulWidget {
  const Prodvfatal({Key? key}) : super(key: key);

  @override
  _ProdvfatalState createState() => _ProdvfatalState();
}

class _ProdvfatalState extends State<Prodvfatal> {
  @override
  //таймер на 5 секунд и переход на другую страницу
  void initState() {
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          Screen_1()));
    });
    super.initState();
    if   (countv<30){Str1="Надо еще \n тренироваться!";}
    if (countv >= 30 && countv<=60 ){Str1="Хороший результат";}
    if   (countv>60){Str1="Отличный результат!";}
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar:AppBar(title: const Text("Игра закончена"),
                actions:[
                  TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Podsk()));},
                    child: const Text("Подсказка"),style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  ),
                ]
            ),
            body:Container (
              decoration: const BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("assets/qwe.jpg"),
                  fit:BoxFit.fill,
                ),),
              width:double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children:[
                      const Expanded(flex:1,child:Text(''),),
                      Expanded(flex:4,child: Text("Верных ответов: $countv\n\n",
                        style: TextStyle(
                          fontSize: 25.0,//размер
                          fontStyle: FontStyle.italic,
                        ),),
                      ),
                       Expanded(flex:1,child:Text('') ),
                    ],
                  ),

                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        Str1,
                        textStyle: _colorizeTextStyle,
                        colors: _colorizeColors,
                      ),
                    ],
                    onTap: (){},
                  ),
                ],
              ),
            )
        )
    );
  }
}


class AnimatedTextExample {
  final String label;
  final Color? color;
  final Widget child;

  const AnimatedTextExample({
    required this.label,
    required this.color,
    required this.child,
  });
}

// Colorize Text Style
const _colorizeTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Horizon',
);

// Colorize Colors
const _colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];