import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import '../main.dart';
import 'Podsk.dart';
import 'final.dart';

var a=['довезЁнный', 'зАгнутый', 'занЯтый' , 'запЁртый' , 'засЕленный' , 'наделЁнный', 'нажИвший', 'налитА', 'нАчавший', 'нАчатый', 'низвЕденный' , 'обОдренный ', 'обострЁнный', 'отклЮченный', 'повтОренный', 'поделЁнный', 'пОнявший', 'принЯтый', 'приручЁнный', 'прОживший', 'снятЫй' , 'согнУтый', 'зАнята', 'запертА', 'заселенА', 'низведЁн',  'обОдрен', 'обОдрена', 'снЯта'];
var b=['довЕзенный',  'загнУтый', 'зАнятый' , 'зАпертый' , 'заселЁнный' ,'надЕленный', 'нАживший', 'нАлита', 'начАвший', 'начАтый', 'низведЁнный' , 'ободрЁнный' , 'обОстренный', 'отключЁнный', 'повторЁнный', 'подЕленный', 'понЯвший', 'прИнятый', 'прирУченный', 'прожИвший', 'снЯтый' , 'сОгнутый', 'занятА', 'зАперта', 'засЕлена', 'низвЕден', 'ободрЁн' , 'ободренА', 'снятА'];
var r=Random(28);
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int rnd=0;
Set <int> av={0,1,5,6,7,9,12,15,18,23,24,25};
Set <int> bv={2,3,4,8,10,11,13,14,16,17,19,20,21,22,26,27,28};
Random random = new Random();
int randomNumber =random.nextInt(28);

class Prich extends StatefulWidget {
  const Prich({Key? key}) : super(key: key);

  @override
  _PrichState createState() => _PrichState();
}

class _PrichState extends State<Prich> {
  @override
  //таймер на 60 секунд и переход на другую страницу
  void initState() {
    countv=0;
    counto=0;
    Timer(Duration(seconds: 60), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          Final()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(28);

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title: Text("Причастия"),
            actions:[
              IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Screen_1()));}, icon: Icon (Icons.school)),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Podsk()));},
                child: const Text("Подсказка"),style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
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
