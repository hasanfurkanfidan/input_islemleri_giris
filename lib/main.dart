
import 'package:flutter/material.dart';
import 'package:input_islemleri_giris/ui/diger_form_elemanlari.dart';
import 'package:input_islemleri_giris/ui/form_islemleri.dart';
import 'package:input_islemleri_giris/ui/form_ve_textformfield.dart';
import 'package:input_islemleri_giris/ui/tarih_ve_saat_secme.dart';

void main(){
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    theme: ThemeData(primarySwatch: Colors.orange),
    initialRoute:"/tarihSaatSecme" ,
    routes: {'/formIslemleri': (context) =>FormIslemleri(),
      "/formVeTextFormField":(context)=>FormVeTextFormField(),
      "/digerFormElemanlari":(context)=>DigerFormElemanlari(),
      "/tarihSaatSecme":(context)=>TarihVeSaat()
    },

    debugShowCheckedModeBanner: false,
  ));
}