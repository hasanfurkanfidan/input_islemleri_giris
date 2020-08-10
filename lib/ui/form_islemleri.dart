
import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
TextEditingController textController1 ;
  String girilenMetin  ="Merhaba";
  FocusNode _fNode;
  int maxLine = 1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fNode = FocusNode();
    textController1 = TextEditingController(text: "varsayılan");
    _fNode.addListener(() {setState(() {
      if(_fNode.hasFocus){
        maxLine = 3;
      }
      else{
        maxLine = 1;
      }
    }); });


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _fNode.dispose();
    textController1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input işlemleri"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
             textController1.text = "Merhaba";
            },
            child: Icon(Icons.edit),
          ),
        SizedBox(height: 10,),

          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: (){
              FocusScope.of(context).requestFocus(_fNode);
            },
            child: Icon(Icons.edit),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.all(15),
          children: <Widget>[
            TextField(
            controller: textController1,
              focusNode: _fNode,
              decoration: InputDecoration(
                hintText: "Metni Buraya yazınız",
                labelText: "Başlık",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(Icons.edit),
                prefixIcon: Icon(Icons.add),
                fillColor: Colors.red.shade50,

              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (String s){
                girilenMetin = s;
              },
            ),

            Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal.shade200,
              width:double.infinity ,
              height: MediaQuery.of(context).size.height/2,
              child: Align(alignment:Alignment.center,child: Text(girilenMetin)),
            ),
          ],

        ),
      ),

    );
  }
}
