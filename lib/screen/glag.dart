import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import '../main.dart';
import 'Podsk.dart';
import 'final.dart';
var a=['бралА', 'бралАсь', 'взялА', 'взЯться', 'взялАсь', 'влилАсь','ворвалАсь','воспринЯть','воспринялА','воссоздАть','воссоздалА','вручИть','вручИт','гналА','гналАсь','добралА','добралАсь','дождалАсь','дозвонИться','дозвонИтся','дозвонЯтся','ждалА','жилОсь','закУпорить','занЯть','зАнял','занялА','зАняли','заперлА','заперлАсь','звалА','звонИшь','звонИт','звонИм','клАла','лгалА','лилАсь','навралА','наделИт','надорвалАсь','назвалАсь','накренИтся','налилА','нарвалА','начАть','нАчал','началА','нАчали','обзвонИть','обзвонИт','облегчИть','облегчИт','облилАсь','обнЯлась','обогнАла','ободрАла','обОдрить','обОдриться','обОдришься','обОстрить','одОлжить','одОлжит','озлобИтьоклеИть','окрУжит','опломбИровать','сортИроватъ','осведомИться','осведомИшься','Отбыть','Отбыла','отдАла','откупОрить','откупорИл','отозвАла','отозвАлась','перелИла','плодонОсить','повтОрить','повтОрит','позвАла','позвОнить','позвОнишь','позвОнит','полИла','полОжить','полОжил','пОнять','пОняла','послалА','прИбыть','прибЫл','прибЫла','прибЫло','прИнять','принЯл','принЯли','рвАла','свЕрлишь','свЕрлит','снЯла','создАла','сорвАла','убрАла','углУбить','укрЕпит','черпАть','щЕмит','щелкАть'];
var b=['брАла','брАлась','взЯла','взятьсЯ ','взЯлась ','влИлась', 'ворвАлась','воспрИнять','воспрИняла','воссОздать','воссоздАла','врУчить ','врУчит ','гнАла ','гнАлась ','добрАла ','добрАлась ','дождАлась ','дозвОниться ','дозвОнится ','дозвОнятся ','ждАла ','жИлось ','закупОрить ','зАнять ','занЯл ','занЯла ','занЯли ','запЁрла ','запЁрлась ','звАла ','звОнишь ','звОнит ','звОним ','клалА ','лгАла ','лИлась ','наврАла ','надЕлит ','надорвАлась ','назвАлась ','накрЕнится ','нАлила ','нарвАла ','нАчать ','начАл ','нАчала ','начАли ','обзвОнить ','обзвОнит ','облЕгчить ','облЕгчит ','облИлась ','обнялАсь ','обогналА ','ободралА ','ободрИть ','ободрИться ','ободрИшься ','обострИть ','одолжИть ','одолжИт ','озлОбитьоклЕить ','окружИт ','опломбировАть ','сортировАтъ ','освЕдомиться ','освЕдомишься ','отбЫть ','отбылА ','отдалА ','откУпорить ','откУпорил ','отозвалА ','отозвалАсь ','перелилА ','плодоносИть ','повторИть ','повторИт ','позвалА ','позвонИть ','позвонИшь ','позвонИт ','полилА ','положИть ','положИл ','понЯть ','понялА ','послАла ','прибЫть ','прИбыл ','прибылА ','прИбыло ','принЯть ','прИнял ','прИняли ','рвалА ','сверлИшь ','сверлИт ','снялА ','создалА ','сорвалА ','убралА ','углубИть ','укрепИт','чЕрпать', 'щемИт щЁлкать' ];
var r=Random(108);
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int rnd=0;
Set <int> av={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
Set <int> bv={53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108};
Random random = new Random();
int randomNumber =random.nextInt(108);

class Glag extends StatefulWidget {
  const Glag({Key? key}) : super(key: key);

  @override
  _GlagState createState() => _GlagState();
}

class _GlagState extends State<Glag> {
  @override
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
    int randomNumber = random.nextInt(108);

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(title: Text("Глаголы"),
            actions:[
             // IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon (Icons.arrow_back_ios)),
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
