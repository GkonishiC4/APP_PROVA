import 'package:flutter/material.dart';

import 'Login.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOBRE'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 123, 255, 0)),
              accountName: Text(
                'Guilherme Konishi Yoshihara',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              accountEmail: Text(
                'admin@admin.com',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://scontent.frao3-1.fna.fbcdn.net/v/t1.6435-9/79119923_1390611784435433_8128028975487254528_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=84a396&_nc_eui2=AeH7FUhm1AiKMiEUqnGdxJffoiX9bVIkuSeiJf1tUiS5J_3XyWzhCT77p2Q3IUy5GLmzZ_lROLaxUkcQxQAF_Z7r&_nc_ohc=eJd0riRpRGQAX-OIhda&_nc_ht=scontent.frao3-1.fna&oh=00_AT9BZpTeMZsqi0aXS-ZLIUCX1TyK8DSxqxyXjHgix-VZZw&oe=62801FF4'),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'CATALOGO GERAL',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'TIPOS DE ACABAMENTOS SUPERFICIAIS ',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'TIPOS DE ACABAMENTOS SUPERFICIAIS ',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'ROLAMENTOS',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'CILINDROS PNEUMATICOS',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'MOTORES ELETRICOS',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'TABELA DE AJUSTE',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'CALCULADORA DE ROSCA',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'CALCULADORA DE RPM',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Text(
              'EXIT',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                size: 50,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Login()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),            
                  Image.asset('lib/imagem/konishi.jpg',
                  width:300,
                  height: 300),
              SizedBox(height: 30),
              Text(
                'Guilherme Konishi Yoshihara RA: 2840482021003 - cursando ADS - FATEC RP \n',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              SizedBox(height: 10),
              Text(
                'APP: Este aplicativo tem como objetivo facilicar na consulta de itens como:\n\n'
                '    - Elementos de Fixacao\n'
                '    - Rolamentos\n'
                '    - Acabamentos Superficiais\n'
                '    - Cilindros Pneumaticos\n'
                '    - Motores Eletricos\n'
                '    - Tabela de Ajustes\n'
                '    - Calculadora de Roscas\n'
                '    - Calculadora de RPM\n',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Deixe sua mensagem aqui ',
                  labelText: 'Enviar feedback de melhorias',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                minLines: 1,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: const Text('Enviar'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Mensagem de Feedback Enviada'),
                      action: SnackBarAction(
                        label: 'OK',
                        onPressed: () {},
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Enviar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Mensagem de Feedback Enviada'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
