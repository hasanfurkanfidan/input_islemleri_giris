import 'package:flutter/material.dart';
class FormVeTextFormField extends StatefulWidget {
  @override
  _FormVeTextFormFieldState createState() => _FormVeTextFormFieldState();
}

class _FormVeTextFormFieldState extends State<FormVeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.save),
      ),
      appBar: AppBar(
        title: Text("Form Ve TextFormField"),

      ),
    );
  }
}
