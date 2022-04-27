import 'package:appprova/Login.dart';
import 'package:appprova/Diametro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Rpm.dart';
import 'info.dart';

class url_link extends StatefulWidget {
  const url_link({Key? key}) : super(key: key);

  @override
  State<url_link> createState() => _url_linkState();
}

class _url_linkState extends State<url_link> {
  Future<void> _launchLink(String url) async {
    await launch(url, forceWebView: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
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
              'INFO',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: const Icon(Icons.info_outline, size: 50),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Info()));
              },
            ),
            SizedBox(height: 40),
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
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('lib/imagem/book.svg'),
              SizedBox(height: 50),
              TextButton(
                child: const Text(
                  'CATALOGO GERAL',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => _launchLink(
                    'https://www.indufix.com.br/pdf/Catalogo-Geral-INDUFIX.pdf'),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'TIPOS DE ACABAMENTOS SUPERFICIAIS ',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => _launchLink(
                    'https://www.indufix.com.br/pdf/Guia-de-Acabamentos-Superficiais-INDUFIX.pdf'),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'ROLAMENTOS',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => _launchLink(
                    'https://www.skf.com/group/search-results?hits=12&q=*&searcher=library&site=307&tridion_target=live&language_preset=English&tcm:307-139-512=English&language=en&tridion_version=3&taxonomy=Products%2FBearings,%20units%20and%20housings'),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'CILINDROS PNEUMATICOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () => _launchLink(
                    'https://norgren.partcommunity.com/3d-cad-models/actuators-norgren?info=imi_precision%2F1_actuators&cwid=6712'),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'MOTORES ELETRICOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () => _launchLink(
                    'https://ecatalog.weg.net/drawings_2d_3d/index.asp?empresa=WMO&language=PT&cm=IEC&shortcut=&path_relativo=&path_raiz='),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'TABELA ISO AJUSTE DE PRECISAO EIXO E FUROS',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () => _launchLink(
                    'http://usimarusinagem.com/tabelas/Tabelas%20para%20ajustes%20de%20Eixos%20e%20Furos.pdf'),
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'CALCULADORA DE ROSCA',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Diametro()));
                },
              ),
              SizedBox(height: 5),
              TextButton(
                child: const Text(
                  'CALCULADORA DE RPM',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Rpm()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
