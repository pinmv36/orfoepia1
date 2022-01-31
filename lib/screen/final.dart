import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import 'package:orfoepia/screen/sush.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "dart:math";
import '../main.dart';
String str1="";
String str='';
int count=0;
String s="";
int c=0;
//финал
class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  void _WriteToFile(s)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()
        {print(s);
        if (countv>=count){
    prefs.setString("key", s);}},);
  }
  void _Writetofile1(c)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (c>count){
      prefs.setInt("key1", c);
    }
  }
  void _Start1() async{
    //вывод из файла в переменные
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()
    {str1=prefs.getString('key') ?? 'нет';
    count=prefs.getInt('key1') ?? 0;},);
    //print(s);print(c);
  }
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
            color:Color(0xFFf0f0f0),width: 2
        )
    );

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title: Text("Ваш результат"),
          actions:[
           // IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon (Icons.arrow_back_ios)),
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Screen_1()));}, icon: Icon (Icons.school)),
          ],
        ),
        body:
        Container (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Padding(padding: EdgeInsets.symmetric(horizontal: 70.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled:true,
                    fillColor:Colors.black12,
                    enabledBorder:borderStyle,
                    focusedBorder:borderStyle,
                    labelText:"Введите Ваше имя",
                  ),
                  onChanged: (str){
                    _Start1();
                    _WriteToFile(str);
                    _Writetofile1(countv);
                  },//
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                  padding:EdgeInsets.symmetric(horizontal: 85.0),
                  child: Text("Верных ответов: $countv\n\n",
                    style: TextStyle(
                      fontSize: 25.0,//размер
                      fontStyle: FontStyle.italic,
                    ),),
              ),

              Padding(
                padding:EdgeInsets.symmetric(horizontal: 90.0),
                child:  Text('Ошибок:  $counto',
                  style: TextStyle(
                  fontSize: 25.0,//размер
                  fontStyle: FontStyle.italic,
                ),),
              ),
              SizedBox(height: 40,),
              TextButton(
                  child:const Text('Посмотреть лучший результат',
                    style: TextStyle(
                        fontSize: 20.0,//размер
                        color: Colors.blue,//цвет текста
                        fontStyle: FontStyle.italic),
                  ),
                  onPressed:()async{
                    //вывод из файла в переменные
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    setState((){
                      s=prefs.getString('key') ?? 'нет';
                      c=prefs.getInt('key1') ?? 0;
                      // print(s);print(c);
                    },);
                  }
              ),

              //печать переменных
              SizedBox(height: 10,),
              Text(s,
                style: const TextStyle(
                    fontSize: 20.0,//размер
                    color: Colors.white,//цвет текста
                    fontStyle: FontStyle.italic),),
              Text("$c",
                style: const TextStyle(
                    fontSize: 20.0,//размер
                    color: Colors.white,//цвет текста
                    fontStyle: FontStyle.italic),),
            ],
          ),
        ),
      ),
    );
  }
}
