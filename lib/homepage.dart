
import 'package:flutter/material.dart';
import 'tela_pix.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: Stack(
        children: [
          Positioned(
            top: 70,
            left: 10,
            child: Text("Olá, Usuário",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 10,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    child: Image.asset(
                      'assets/images/visibilidade.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    child: Image.asset(
                      'assets/images/config.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top:150,
            left: 10,
            right: 10,
            child: Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 10,
            right: 10,
            child: Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 40,
            child: Image.asset(
              'assets/images/moedas.png',
              width: 40,
              height: 40,
            ),
          ),
          Positioned(
            top: 390,
            left:90,
            child: Text('Conta',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 50,
            child:Text('Saldo disponível',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'Montserrat'
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 50,
            child: Text('1.000,00',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Montserrat'
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 40,
            child: Container(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/cartao.png',
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 90,
            child: Text('Cartão de Crédito',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 50,
            child: Text('Fatura atual',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 10,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple[600],
                fixedSize: Size(100,100),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const pix(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/pix.png',
                height: 50,
                width: 50,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
