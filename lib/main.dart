import 'package:flutter/material.dart';
import 'package:new_project/core/routes/routes.dart';

import 'package:new_project/views/usage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _forRoute = Routes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: UsagePage(),

      initialRoute: '/splash',
      onGenerateRoute: _forRoute.ongenerateRoute,
    );
  }
}
