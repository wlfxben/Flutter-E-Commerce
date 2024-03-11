
import 'package:flutter/material.dart';
import 'package:flutter_slicing/pages/boardingpage.dart';
import 'package:flutter_slicing/pages/forgotten_password.dart';
import 'package:flutter_slicing/pages/login.dart';
import 'package:flutter_slicing/pages/sign_up.dart';
import 'package:flutter_slicing/pages/successful2.dart';
import 'package:flutter_slicing/pages/succsessful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/start',
      routes: {
        '/login': (context) =>  LoginPage(),
        '/sign_up': (context) =>  SignUpPage(),
        '/start': (context) => const OnBoardPage(),
        '/successful': (context) =>  SuccessfulPage(),
         '/successful2': (context) =>  Successful2Page(),
        '/forgotten_password':(context) => ForgottenPasswordPage()
      },
    );
  }
}