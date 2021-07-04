import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // <-- Berfungsi Untuk  Bisa Scroll
        child: SafeArea(
          // < -- Biar Gak Keluar Area Screen HP
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // <-- Berfungsi untuk  atur nilai X jadi tengah
              children: [
                Text(
                  "Login Area",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50), // <-- Kasih Jarak Tinggi : 50px
                Form(
                  key: _fbKey,
                  child: Container(
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          attribute: "email",
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(),
                              labelText: "Email"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormBuilderTextField(
                          obscureText:
                              true, // <-- Buat bikin setiap inputan jadi bintang " * "
                          attribute: "password",
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(),
                              labelText: "Password"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _fbKey.currentState.save();
                              print(_fbKey.currentState.value);
                            },
                            child: Text("Login"))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
