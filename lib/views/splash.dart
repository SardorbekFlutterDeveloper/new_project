import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/bloc/splash/organ_cubit.dart';

import 'package:new_project/core/components/size_config.dart';
import 'package:new_project/core/constants/constatns.dart';
import 'package:new_project/extension/extenmsin.dart';
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
        children: [
          SizedBox(
            width: context.w,
            height: context.h * 0.37,
          ),
          SizedBox(
            height: context.h * 0.2,
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              // color: Colors.blueAccent,
              color: Color.fromARGB(255, 77, 193, 243),
            ),
          ),
          SizedBox(
            height: context.h * 0.30,
          ),
          SizedBox(
            width: context.w * 0.5,
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
