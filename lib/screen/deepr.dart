import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import '../main.dart';
import 'Podsk.dart';
import 'final.dart';

var a=['начАв	','нАчавшись	','отдАв	','пОдняв	','понЯв	','прИбыв	','вОвремя	','дОбела	','дОверху	','донельзЯ	','дОнизу	','досухА	','зАсветло	','красивЕе	','нАверх	','нАдолго	','ненадОлго'];
var b=['нАчав	','начАвшись	','Отдав	','поднЯв	','пОняв	','прибЫв	','воврЕмя	','добелА	','доверхУ	','донЕльзя	','донИзу	','дОсуха	','засветлО	','красИвее	','навЕрх	','надОлго	','ненАдолго'];
var r=Random(17);
String wor = '';
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int rnd=0;
Set <int> av={0,2,4,6,8,10,12,16};
Set <int> bv={1,3,5,7,9,11,13,14,15};
Random random = new Random();
int randomNumber =random.nextInt(17);

class Deepry extends StatefulWidget {
  const Deepry({Key? key}) : super(key: key);

  @override
  _DeepryState createState() => _DeepryState();
}

class _DeepryState extends State<Deepry> {
  @override
  //таймер на 60 секунд и переход на другую страницу
  void initState() {
    countv=0;
    counto=0;
    Timer( Duration(seconds: 60), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          Final()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(17);

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title: const Text("Деепричастия и наречия"),
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
                  title:  Text(a[randomNumber],style:const TextStyle(fontSize:22.0,color: Colors.black,
                  ) ,),
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
