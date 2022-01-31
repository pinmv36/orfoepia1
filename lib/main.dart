import 'package:flutter/material.dart';
import 'package:orfoepia/screen/deepr.dart';
import 'package:orfoepia/screen/final.dart';
import 'package:orfoepia/screen/glag.dart';
import 'package:orfoepia/screen/prich.dart';
import 'package:orfoepia/screen/pril.dart';
import 'package:orfoepia/screen/prodv.dart';
import 'package:orfoepia/screen/prodvfatal.dart';
import 'package:orfoepia/screen/screen1.dart';
import 'package:orfoepia/screen/sush.dart';
import 'package:flutter/cupertino.dart';
import "dart:math";
import 'screen/Podsk.dart';
var rng = new Random();
int countv=0;
int counto=0;
//главная
void main() {runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/':(BuildContext context) => Screen_1(),
      '/second':(BuildContext context) => Sush(),
      '/pril':(BuildContext context)=>Pril(),
      '/prich':(BuildContext context)=>Prich(),
      '/glag':(BuildContext context)=>Glag(),
      '/deepr':(BuildContext context)=>Deepry(),
      '/prodv':(BuildContext context)=>Prodv(),
      '/podsk':(BuildContext context)=>Podsk(),
},),);
}




