import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/prich.dart';
import 'package:orfoepia/screen/pril.dart';
import 'package:orfoepia/screen/prodv.dart';
import 'package:orfoepia/screen/sush.dart';
import "dart:math";

import 'Podsk.dart';
import '../main.dart';
import 'deepr.dart';
import 'glag.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//первый экран запуска
class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  _Screen_1State createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar:AppBar(title: const Text("Часть речи"),
                actions:[
                  TextButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Podsk()));},
                    child: const Text("Подсказка"),style: ButtonStyle(
                    //backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  ),
                ]
            ),
            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children:[
                      DrawerHeader(
                          decoration: const BoxDecoration(
                            color:Colors.blue,
                          ),
                          child:Container(
                            height:300,
                            child:Column(
                              children:[
                                Container(
                                  child:Image.asset('assets/orfo.gif'),
                                ),
                              ],
                            ),
                          )
                      ),

                      const Text("  Начальный уровень",
                        style: TextStyle(
                          fontSize: 16.0,//размер
                        ),),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.filter_1),
                        title:const Text('Существительные'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Sush()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_2),
                        title:const Text('Прилагательные'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Pril()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_3),
                        title:const Text('Причастия'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Prich()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_4),
                        title:const Text('Глаголы'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Glag()));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_5),
                        title:const Text('Деепричастия и наречия'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Deepry()));
                        },
                      ),
                      const Divider(height: 80,thickness: 5,),
                      const Text("  Продвинутый уровень",
                        style: TextStyle(
                          fontSize: 16.0,//размер
                        ),),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.filter_6),
                        title:const Text('Все части речи'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  =>Prodv()));
                        },
                      ),
                    ]
                )
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
                  Container(
                child: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily:'Agne',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('Орфоэпическая норма — это единственно возможный или предпочитаемый вариант правильного произношения слова.'),
                        TyperAnimatedText('В языковедении существуют понятия литературного и разговорного языков. Художественные произведения, статьи в СМИ, новостные передачи радио- и телепрограмм, переписка и общение интеллигентных образованных людей — это место «обитания» литературного языка. Его основой является орфоэпия и её нормы.'),
                      ],
                      onTap: (){},
                    ),
                  ),
                ),
              ),
              ],
            ),
              ),
            )
        );
  }
}

