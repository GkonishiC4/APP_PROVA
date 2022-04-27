import 'package:appprova/url_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'cadastro.dart';
import 'recover.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('lib/imagem/enginer.svg'),
                SizedBox(height: 100),
                TextField(
                  onChanged: (text) {
                    email = text;
                    print(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                    print(text);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      'RECOVER PASSWORD',
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Recover()));
                    },
                  ),
                ),
                TextButton(
                    onPressed: () {
                      if (email == 'admin@admin.com' && password == '123456') {
                        print('Login Autorizado');

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const url_link()));
                      } else {
                        print('Login naoAutorizado');                
                        caixaDialogo('e-mail : admin@admin.com \n'
                            'senha : 123456');
                        caixaDialogo('Senha ou e-mail incorreto');
                      }
                    },
                    child: Text('LOGIN')),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    child: Text(
                      'REGISTER',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const cadastro()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
