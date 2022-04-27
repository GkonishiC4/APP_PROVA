import 'package:appprova/Login.dart';
import 'package:appprova/cadastro.dart';
import 'package:appprova/recover.dart';
import 'package:appprova/url_link.dart';
import 'package:flutter/material.dart';

import 'info.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP_PROVA',
      home: Login(),
    ),
  );
}
