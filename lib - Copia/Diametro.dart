import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';

class Diametro extends StatefulWidget {
  const Diametro({Key? key}) : super(key: key);

  @override
  State<Diametro> createState() => _DiametroState();
}

class _DiametroState extends State<Diametro> {
  var txtBroca = TextEditingController();
  var txtPasse = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('THREAD CALCULATOR'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade800,
        ),
        backgroundColor: Colors.white,
        //BODY
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                SvgPicture.asset('lib/imagem/Parafuso.svg'),
                SizedBox(height: 100),
                campoTexto('SCREW', txtBroca),
                const SizedBox(
                  height: 20,
                ),
                campoTexto('THREAD', txtPasse),
                const SizedBox(
                  height: 20,
                ),
                botao('CALCULATE'),
              ],
            ),
          )),
        ));
  }

  //
  //CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return TextFormField(
      controller: variavel,
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: const TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        hintText: 'INSERT VALUE',
        hintStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

 

  botao(rotulo) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
      
        onPressed: () {

          setState(() {
            double Broca = double.parse(txtBroca.text.replaceFirst(',', '.'));
            double Passe = double.parse(txtPasse.text.replaceFirst(',', '.'));
            double dim = Broca - Passe;
            caixaDialogo(
                'O diametro da broca que voce ira utilizar eh ${dim.toStringAsFixed(2)} mm');
          });
        },
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 22),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.green.shade400,
        ),
      ),
    );
  }

  ////g////////////////////////////
  ///Caixa de dialogo
  ////////////////////////////////

  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: Text(msg),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('CLOSE')),
            ],
          );
        },
        );
  }
}
