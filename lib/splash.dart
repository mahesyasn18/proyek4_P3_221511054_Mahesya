import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shrine/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShrinePink100,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/3.0x/diamond.png',
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Shrine',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Created By: ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            'Mahesya Setia Nugraha',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Text(
            '2B-D3 | 221511054',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ],
      )),
    );
  }
}
