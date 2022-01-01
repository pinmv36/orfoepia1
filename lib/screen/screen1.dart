import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/sush.dart';
import "dart:math";

import 'Podsk.dart';
import '../main.dart';

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
        home: Scaffold(
            appBar:AppBar(title: const Text("Часть речи"),
                actions:[
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon (Icons.arrow_back_ios)),
                  IconButton(onPressed: (){}, icon: Icon (Icons.school)),
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
                        onTap: (){},
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_3),
                        title:const Text('Причастия'),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_4),
                        title:const Text('Глаголы'),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_5),
                        title:const Text('Деепричастия'),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: const Icon(Icons.filter_6),
                        title:const Text('Наречия'),
                        onTap: (){},
                      ),
                      const Divider(height: 80,thickness: 5,),
                      const Text("  Продвинутый уровень",
                        style: TextStyle(
                          fontSize: 16.0,//размер
                        ),),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.filter_7),
                        title:const Text('Все части речи'),
                        onTap: (){},
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
                  Row(
                    children:[
                      const Expanded(flex:1,child:Text(''),),
                      const Expanded(flex:4,child: Text('Орфоэпическая норма — \nэто единственно возможный или предпочитаемый вариант правильного произношения слова',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,//размер
                          fontStyle: FontStyle.italic,
                        ),
                      ),),
                      const Expanded(flex:1,child:Text(''),),
                    ],
                  ),
                ],
              ),
            )
        )


    );
  }
}

