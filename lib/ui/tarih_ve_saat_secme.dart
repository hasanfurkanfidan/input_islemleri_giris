
import 'package:flutter/material.dart';

class TarihVeSaat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TarihVeSaatState();
  }

}

class _TarihVeSaatState extends State<TarihVeSaat> {
  @override

  Widget build(BuildContext context) {
    DateTime suan  = DateTime.now();
    DateTime ucAyOncesi = DateTime(2020,suan.month-3);
    DateTime yirmiGunSonrasi  = DateTime(2020,9,suan.day-20);
    return Scaffold(
      appBar:AppBar(
        title: Text("Tarih Ve Saat"),

      ) ,
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                showDatePicker(context: context, initialDate: suan, firstDate:ucAyOncesi , lastDate: yirmiGunSonrasi).then((secilenTarih){debugPrint(secilenTarih.toString());});
              },
              child: Text("Tarih Seç"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: (){},
              child: Text("Saat Seç"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}