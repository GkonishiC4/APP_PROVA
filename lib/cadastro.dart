import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  String name = '';
  String Last_name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    var svgPicture = SvgPicture;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('lib/imagem/pen.svg'),
                SizedBox(height: 50),
                const Text(
                  'REGISTRATION',
                  style: const TextStyle(
                    fontSize: 36,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  onChanged: (text) {
                    name = text;
                    print(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    Last_name = text;
                    print(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    email = text;
                    print(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm E-mail',
                  ),
                ),
                SizedBox(height: 20),
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
                TextField(
                  onChanged: (text) {
                    password = text;
                    print(text);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      if (email != null && password != null) {
                        print('REGISTRO OK');
                        Navigator.of(context).pop();
                      } else {
                        print('REGISTRO NOT OK');
                      }
                    },
                    child: Text('REGISTER')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
