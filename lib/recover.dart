import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Recover extends StatefulWidget {
  const Recover({Key? key}) : super(key: key);

  @override
  State<Recover> createState() => _RecoverState();
}

class _RecoverState extends State<Recover> {
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    var svgPicture = SvgPicture;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('lib/imagem/svgviewer-output.svg'),
                SizedBox(height: 50),
                const Text(
                  'RECOVER PASSWORD',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 15),
                
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                    print(text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm New Password',
                  ),
                ),
          Container(
                  height: 40,
                  alignment: Alignment.center,
                  child:TextButton(
                  child: Text(
                    'SEND',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
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
}
