import 'dart:async';
import 'package:xpert_cash_front/pages/choix.dart';
import 'package:xpert_cash_front/pages/constante.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();

    Timer(
      const  Duration(seconds:7),
          () =>
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const Choix(),
            ),
          ),
    );


  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Xpert",
                        style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 60),
                ),
                Text(
                  "Cash",
                  style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}