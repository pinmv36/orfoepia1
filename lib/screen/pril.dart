import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/final.dart';
import 'package:orfoepia/screen/screen1.dart';
import '../main.dart';
import 'Podsk.dart';

var a=['вернА', 'знАчимый', 'красивЕе', 'красИвейший', 'кУхонный', 'лОвка', 'мозаИчный', 'Оптовый', 'прозОрлива', 'сливОвый', 'смазлИва', 'суетливА', 'болтливА', 'прожорлИва'];
var b=['вЕрна', 'значИмый', 'красИвее', 'красивЕйший', 'кухОнный', 'ловкА', 'мозАичный', 'оптОвый', 'прозорлИва', 'слИвовый', 'смазливА', 'суетлИва', 'болтлИва', 'прожОрлива'];
var r=Random(13);
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int rnd=0;
Set <int> av={0,1,3,4,6,7,10};
Set <int> bv={2,5,8,9,11,12,13};
Random random = new Random();
int randomNumber =random.nextInt(13);

class Pril extends StatefulWidget {
  const Pril({Key? key}) : super(key: key);

  @override
  _PrilState createState() => _PrilState();
}

class _PrilState extends State<Pril> {
  @override
  //таймер на 30 секунд и переход на другую страницу
  void initState() {
    countv=0;
    counto=0;
    Timer(Duration(seconds: 30), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          Final()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(13);

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title: Text("Прилагательные"),
            actions:[
              IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Screen_1()));}, icon: Icon (Icons.school)),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Podsk()));},
                child: const Text("Подсказка"),style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              ),
            ]
        ),
        body:

        Container (
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage("assets/qwe.jpg"),
              fit:BoxFit.fill,
            ),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child: RadioListTile(
                  title:  Text(a[randomNumber],style:const TextStyle(fontSize:22.0,color: Colors.black,) ,),
                  value: 1,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = 1;
                      if ((av.contains(randomNumber))){countv++;}
                      else {counto++;};
                      val1=-1;
                    });
                  },
                  activeColor:Colors.blue,),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child: RadioListTile(
                  title:  Text(b[randomNumber],style:const TextStyle(fontSize:22.0,color: Colors.black,) ,),
                  value: 2,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = 2;
                      if ((bv.contains(randomNumber))){countv++;}
                      else {counto++;};
                      val1=-1;
                    });
                  },
                  activeColor:Colors.blue,),
              ),
              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 20.0),
                child: Text("Верные ответы: $countv",
                  style: TextStyle(
                    fontSize: 16.0,//размер
                    fontStyle: FontStyle.italic,
                  ),),),
              Padding(padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 20.0),
                child: Text("Ошибки: $counto",
                  style: TextStyle(
                    fontSize: 16.0,//размер
                    fontStyle: FontStyle.italic,
                  ),),),
            ],
          ),
        ),

      ),
    );

  }
}
