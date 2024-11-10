import 'package:flutter/material.dart';
import 'package:gamify_app/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
