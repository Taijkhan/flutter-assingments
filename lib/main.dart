import 'package:flutter/material.dart';
import 'package:taij_assingment/checkoutpage.dart';
import 'package:taij_assingment/home.dart';
import 'package:taij_assingment/login.dart' as myapp;
import 'package:taij_assingment/product_detail.dart';
import 'package:taij_assingment/product_screen.dart';
import 'package:taij_assingment/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: home(),
      initialRoute: '/register',
      routes: {
      
        '/detail': (context) =>product_details(),
        '/login': (context)=> myapp.Login(),
        '/home': (context)=> HomePage(),
        '/product': (context)=> product_screen(),
        '/register': (context) => Register(),
          '/checkout': (context)=> check_out(),
      }
    );
  }
}

