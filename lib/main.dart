import 'package:flutter/material.dart';
import 'package:orfoepia/screen1.dart';
import 'package:orfoepia/sush.dart';
import 'package:flutter/cupertino.dart';
import "dart:math";
var a=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
var b=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
var r=Random(49);
String wor = '';
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int count=0;
int rnd=0;
Random random = new Random();int randomNumber = random.nextInt(49);
//главная
void main() {runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(BuildContext context) => Screen_1(),
      '/second':(BuildContext context) => Sush(),
      '/podsk':(BuildContext context)=>Podsk(),


}
));
}
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

//существительные
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
        appBar:AppBar(title: Text("Существительные"),
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
                  title:  Text(a[randomNumber],style:const TextStyle(fontSize:20.0) ,),
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
                  title:  Text(a[randomNumber],style:const TextStyle(fontSize:20.0) ,),
                  value: 2,
                  groupValue: val1,
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

//подсказка
class Podsk extends StatefulWidget {
  const Podsk({Key? key}) : super(key: key);

  @override
  _PodskState createState() => _PodskState();
}

class _PodskState extends State<Podsk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("Подсказка"),
          actions:[
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon (Icons.arrow_back_ios)),
            IconButton(onPressed: (){}, icon: Icon (Icons.school)),
          ],
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
            children: const [
              Padding(
                  padding:EdgeInsets.symmetric(horizontal: 75.0),
                  child: Text("   В формах именительного падежа множественного числа ударение падает на окончание -а окончание -ы является безударным.\n   В формах родительного падежа множественного числа окончание -ов чаще всего является безударным, а окончание -ей – ударным. \n   В существительных иностранного происхождения ударение, как правило, падает на последний слог. \n   Часто в производных словах сохраняется ударение от производящих слов.\n\n")
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 75.0),
                child:  Text('   Ударение в кратких формах прилагательных и страдательных причастий всегда падает на основу. Но в форме единственного числа женского рода оно переносится на окончание. \n\n   У многих глаголов прошедшего времени женского рода ударным является окончание.'),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(170.0,0.0,75.0, 0.0),
                child:  Text('    В глаголах, образованных от прилагательных, обычно ударение падает на окончание.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
