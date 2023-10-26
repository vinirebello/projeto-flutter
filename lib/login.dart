import 'package:flutter/material.dart';
import 'cadastro.dart';

import 'homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
        backgroundColor: Colors.purple[700],
        body: Stack(
          children: [
            Image.asset(
              'assets/images/imagemfundo.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Container(
                    height: 200,
                    width: 70,
                    child: Text(
                      "Um mundo financeiro sem complexidades",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),

                  ),
                  SizedBox(height: 10),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 60),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const cadastro(),
                        ),
                      );
                    },
                    child: Text("COMEÇAR"),
                  ),
                  SizedBox(height: 10),

                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.white),
                      fixedSize: Size(100, 60),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const home(),
                        ),
                      );
                    },
                    child: Text("ENTRAR ",
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
            )
          ],
        )
    );
  }
}