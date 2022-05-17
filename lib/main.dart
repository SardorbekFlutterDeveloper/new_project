import 'package:flutter/material.dart';
import 'package:new_project/views/home_page.dart';
import 'package:new_project/views/product.dart';
import 'package:new_project/views/splash.dart';
import 'package:new_project/views/usage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      

        primarySwatch: Colors.blue,
      ),
      home: UsagePage()
    );
  }
}
