

import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_paiement.dart';
import 'package:xpert_cash_front/pages/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash()
    );
  }
  
}

