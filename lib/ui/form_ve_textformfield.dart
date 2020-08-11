import 'package:flutter/material.dart';

class FormVeTextFormField extends StatefulWidget {
  @override
  _FormVeTextFormFieldState createState() => _FormVeTextFormFieldState();
}

class _FormVeTextFormFieldState extends State<FormVeTextFormField> {
  @override
  final key =GlobalKey<FormState>();
  String _adSoyad;
  String _sifre;
  String _eMailAdres;
 bool _otomatikKontrol = false;
  Widget build(BuildContext context) {
    return Theme(

      data: ThemeData(
        primaryColor: Colors.indigo,
        errorColor: Colors.blue,
        accentColor: Colors.green
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form Ve TextFormField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child:Form(
            key: key,
            autovalidate: _otomatikKontrol,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Adınız ve Soyadınız",
                      labelText: "Ad Soyad",
                      border: OutlineInputBorder()),
                  validator: (String girilenVeri){
                    if(girilenVeri.length<6){
                      return "Lütfen adınızı soyadınızı tam girin";
                    }
                    else{
                      return null;
                    }

                  },
                  onSaved: (deger)=>_adSoyad = deger,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: emailControl,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Email adresiniz",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2)),
                      labelText: "Email",
                      border: OutlineInputBorder()),
                  onSaved: (deger)=>_eMailAdres=deger
                  ,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (String girilenVeri){
                    if(girilenVeri.length<6){
                      return "Şifreniz 6 haneden az olamaz.";

                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Şifreniz",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2)),
                      labelText: "Şifre",
                      border: OutlineInputBorder()),
                  onSaved: (deger)=>_sifre=deger
                  ,
                ),
                SizedBox(height: 10,),
                RaisedButton.icon(
                  color: Colors.blue,
                  onPressed: (){
                    _girisBilgileriniOnayla();
                  },
                  icon: Icon(Icons.save),
                  label: Text("Kaydet"),
                )
              ],
            ),
          )

        ),
      )
    );
  }

  void _girisBilgileriniOnayla() {
   if(key.currentState.validate()){
     key.currentState.save();
print(_eMailAdres);
   }
   else{
     setState(() {
       _otomatikKontrol = true;
     });
   }
  }

String  emailControl(String mail) {
  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(mail);
  if(emailValid==true){
    return null;
  }
  else{
    return "Geçersiz e mail";
  }

  }
}
