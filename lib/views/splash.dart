import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/bloc/splash/organ_cubit.dart';

import 'package:new_project/core/components/size_config.dart';
import 'package:new_project/core/constants/constatns.dart';
import 'package:new_project/views/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050352),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 130, top: 300),
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              // color: Colors.blueAccent,
              color: Color.fromARGB(255, 77, 193, 243),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20, left: 100),
            child: SvgPicture.asset(
              "assets/images/text.svg",
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
