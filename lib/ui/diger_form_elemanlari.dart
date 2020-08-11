import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DigerFormElemanlariState();
  }
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  @override
  bool switchState = false;
  String secilenSehir = "Ankara";
  bool checkBoxState = false;
  String sehir = null;
  List<String> sehirler = ["Ankara","Bursa","İzmir","Afyon"];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi;
                });
              },
              activeColor: Colors.red,
              title: Text("CheckBox title"),
              subtitle: Text("CheckBox subtitle"),
              secondary: Icon(Icons.account_circle),
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              title: Text("Ankara"),
              activeColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  setState(() {
                    debugPrint("Seçilen deger $deger");
                  });
                });
              },
            ),
            RadioListTile<String>(
              value: "Bursa",
              title: Text("Bursa"),
              groupValue: sehir,
              activeColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  setState(() {
                    debugPrint("Seçilen deger $deger");
                  });
                });
              },
            ),
            RadioListTile<String>(
              value: "Afyon",
              title: Text("Afyon"),
              groupValue: sehir,
              activeColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  setState(() {
                    debugPrint("Seçilen deger $deger");
                  });
                });
              },
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  debugPrint(deger.toString());
                  switchState = deger;
                });
              },
              title: Text("Switch Title"),
            ),

            DropdownButton<String>(
              items:sehirler.map((oankiSehir) => DropdownMenuItem<String>(child: Text(oankiSehir),value: oankiSehir,)).toList() ,
              onChanged: (String secilen){
                setState(() {
                  secilenSehir = secilen;
                  debugPrint(secilenSehir);
                });
              },
              value: secilenSehir,

            ),
          ],
        ),
      ),
    );
  }


}
