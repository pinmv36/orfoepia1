import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import 'package:orfoepia/screen/sush.dart';
import 'package:flutter/cupertino.dart';
import "dart:math";

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