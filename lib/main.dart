import 'package:authentication/create_account.dart';
import 'package:authentication/login.dart';
import 'package:authentication/signin_with_phone.dart';
import 'package:authentication/success.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': ((context) => const LoginScreen()),
        '/second': ((context) => const CreateAccount()),
        '/success': ((context) => const SuccesScrren()),
        '/phone': ((context) => SignWithPhone()),
      },
    );
  }
}
