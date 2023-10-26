import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class cadastro extends StatelessWidget {
  const cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        )
                    ),
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      )
                  ),
                ),

                SizedBox(height: 15),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100,50),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const home(),
                      ),
                    );
                  },
                  child: Text('CADASTRAR',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
