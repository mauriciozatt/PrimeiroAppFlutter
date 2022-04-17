//import 'dart:html';
import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    //debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//O flutter eu preciso definir quando muda de status o meus valores de váriaveis por isso a clase StateFul
//Pode notar que o RunApp está istanciando/chamando a classe Home ou seja o dev do app agora é aqui
class _HomeState extends State<Home> {
  var _arrayFrases = [
    "O Maurício criou esse Appp",
    "Desenvolvido em 17/04/2022",
    "Meu primeiro App Flutter",
    "TESTE frase 44444"];

  var _fraseGerada = 'Clique aqui para gerar uma frase!';

  void _gerarFrase() {
    var vSorteio = Random().nextInt(_arrayFrases.length);

    setState(() {
      switch (vSorteio) {
        case 0:
          {
            _fraseGerada = _arrayFrases[0];
          }
          break;

        case 1:
          {
            _fraseGerada = _arrayFrases[1];
          }
          break;

        case 2:
          {
            _fraseGerada = _arrayFrases[2];
          }
          break;

        case 3:
          {
            _fraseGerada = _arrayFrases[3];
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        //Define a largura do meu container para ocupar 100% da largura da tela (o container recebe sempre o tamanho definido no seu filho (child) )

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Alinhamento do eixo principal

          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            RaisedButton(
              onPressed: _gerarFrase,
              child: Text(
                "Clique Aqui",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              color: Colors.green, //color do botão.
            )
          ],
        ),
      ),
    );
  }
}
