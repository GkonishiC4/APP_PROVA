import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';

class Rpm extends StatefulWidget {
  const Rpm({Key? key}) : super(key: key);

  @override
  State<Rpm> createState() => _RpmState();
}

class _RpmState extends State<Rpm> {
  var txtD = TextEditingController();
  var txtCT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RPM CALCULATOR'),
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
                SvgPicture.asset('lib/imagem/machine.svg'),
                SizedBox(height: 100),
                campoTexto('DIAMETRO', txtD),
                const SizedBox(
                  height: 20,
                ),
                campoTexto('VELOCIDADE CORTE', txtCT),
                const SizedBox(
                  height: 20,
                ),
                botao('CALCULATE'),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('lib/imagem/tabela_corte.jpg'),
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

  /////////////////////////////////
  // BOTÂO
  ////////////////////////////////

  botao(rotulo) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        // Evento que ocorrera quando oo usuario acina o botao
        onPressed: () {
//recuperar dados do usuario
          setState(() {
            double D = double.parse(txtD.text.replaceFirst(',', '.'));
            double CT = double.parse(txtCT.text.replaceFirst(',', '.'));
            double rpm2 = ((CT * 1000) / (3.14 * D));
            double rpm = ((3.14 * D) * rpm2) / 1000;
            caixaDialogo(
                //'O Rpm que voce ira utilizar eh ${rpm.toStringAsFixed(2)}'
                'O Rpm indicado eh ${rpm2.toStringAsFixed(2)}');
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
        });
  }
}
