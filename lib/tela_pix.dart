import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

TextEditingController _amountController = TextEditingController();
final NumberFormat _currencyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$ ');

class Contato {
  String ?nome;
  String ?cpf;
  Double ?valor;
}

class pix extends StatelessWidget {
  const pix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 15,
            right: 15,
            child: Container(
              height: 100,
              width: 500,
              color: Colors.white,
              child: Text(
                'PARA QUEM VOCÊ DESEJA TRANSFERIR?',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 15,
            right: 15,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 15,
            right: 15,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Chave pix',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 15,
            right: 15,
            child: TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Valor',
                hintText: '00.00',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
              onChanged: (text){
                final numericValue = double.tryParse(text.replaceAll(',', '.')) ?? 0.0;
                _amountController.value = TextEditingValue(
                  text: _currencyFormat.format(numericValue),
                  selection: _amountController.selection,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}