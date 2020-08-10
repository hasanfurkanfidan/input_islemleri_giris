
import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inout işlemleri"),
      ),
      body: ListView(
        children: <Widget>[
          TextField(),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.teal.shade200,
            width:double.infinity ,
            height: MediaQuery.of(context).size.height/2,
            child: Align(alignment:Alignment.center,child: Text("Mehaba")),
          ),
        ],

      ),

    );
  }
}
