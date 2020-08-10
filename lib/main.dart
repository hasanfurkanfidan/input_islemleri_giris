
import 'package:flutter/material.dart';
import 'package:input_islemleri_giris/ui/form_islemleri.dart';
import 'package:input_islemleri_giris/ui/form_ve_textformfield.dart';

void main(){
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    theme: ThemeData(primarySwatch: Colors.orange),
    initialRoute:"/formVeTextFormField" ,
    routes: {'/formIslemleri': (context) =>FormIslemleri(),
      "/formVeTextFormField":(context)=>FormVeTextFormField()
    },

    debugShowCheckedModeBanner: false,
  ));
}