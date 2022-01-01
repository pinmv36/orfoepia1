import 'package:flutter/material.dart';
import 'package:orfoepia/screen/screen1.dart';
import 'package:orfoepia/screen/sush.dart';
import 'package:flutter/cupertino.dart';
import "dart:math";
import 'screen/Podsk.dart';
var rng = new Random();
//главная
void main() {runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(BuildContext context) => Screen_1(),
      '/second':(BuildContext context) => Sush(),
      '/podsk':(BuildContext context)=>Podsk(),


},),);

    for (var i = 0; i < 10; i++) {
      (rng.nextInt(49));
    print(rng);}

}




