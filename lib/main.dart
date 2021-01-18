import 'package:flutter/material.dart';
import 'package:repceitas_app/telaPrincipal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: WidgetLogin(),
        debugShowCheckedModeBanner: false,
        title: "Login",
        theme: ThemeData(primaryColor: Colors.white));
  }
}

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: BorderSide(color: Colors.white))));

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          hintStyle: TextStyle(color: Colors.white),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
            color: Color(0xFFffffff),
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Color(0xFF7d0633), fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))));

    return Scaffold(
        body: Center(
            child: Container(
      color: Color(0xFF7d0633),
      padding: const EdgeInsets.only(top: 110.0, left: 40.0, right: 40.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 150.0, child: Image.asset("assets/login.png")),
          SizedBox(height: 40.0),
          emailField,
          SizedBox(height: 20.0),
          passwordField,
          SizedBox(height: 40.0),
          buttonLogin,
        ],
      ),
    )));
  }
}
