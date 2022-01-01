import 'package:flutter/material.dart';
import 'package:orfoepia/screen1.dart';
import 'package:orfoepia/sush.dart';
import 'package:flutter/cupertino.dart';
import "dart:math";

import 'Podsk.dart';

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




