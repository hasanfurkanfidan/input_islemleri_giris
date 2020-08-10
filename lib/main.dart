
import 'package:flutter/material.dart';
import 'package:input_islemleri_giris/ui/form_islemleri.dart';

void main(){
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    theme: ThemeData(primarySwatch: Colors.orange),
    initialRoute:"/formIslemleri" ,
    routes: {'/formIslemleri': (context) =>FormIslemleri(),
    },

    debugShowCheckedModeBanner: false,
  ));
}