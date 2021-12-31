import "dart:math";

import 'package:flutter/material.dart';
var a=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
var b=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
var r=Random(49);
String wor = '';
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int count=5;

class Sush extends StatefulWidget {
  const Sush({Key? key}) : super(key: key);

  @override
  _SushState createState() => _SushState();
}

class _SushState extends State<Sush> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
            actions:[
              IconButton(onPressed: (){}, icon: Icon (Icons.school)),
              IconButton(onPressed: (){}, icon: Icon (Icons.cloud_upload)),
              TextButton(
                onPressed: (){},
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
            //width:double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 60.0),
                  child: RadioListTile(
                    title:  Text('hjkjhg'),
                    value: 1,
                    groupValue: val1,
                    onChanged: (value) {
                      setState(() {
                        val1 = 1;
                      });
                    },
                    activeColor:Colors.blue,),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 60.0),
                  child: RadioListTile(
                    title:  Text('hjkjhg'),
                    value: 1,
                    groupValue: val2,
                    onChanged: (value) {
                      setState(() {
                        val1 = 2;
                      });
                    },
                    activeColor:Colors.blue,),
                ),


              ],
    ),
    ),

    ),
    );


  }
}
