import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/connexion_code.dart';
import 'package:xpert_cash_front/pages/constante.dart';
import 'package:xpert_cash_front/pages/inscription_admin.dart';
import 'package:xpert_cash_front/pages/splash.dart';

class Choix extends StatefulWidget {
  const Choix({super.key});

  @override
  State<Choix> createState() => _ChoixState();
}

class _ChoixState extends State<Choix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
        margin : EdgeInsets.zero,
        width:double.infinity,
        child:Column(

          children: [

            FractionallySizedBox(
              widthFactor: 1.0,
              child:Image.asset(
                "assets/images/femme1.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150,left: 20, right: 20),
              width: double.infinity,
              height: 50,

              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Couleur de l'ombre
                      spreadRadius: -1, // Écart de l'ombre
                      blurRadius: 2, // Flou de l'ombre
                      offset: Offset(4, -4), // Position de l'ombre (horizontal, vertical)
                      blurStyle: BlurStyle.inner,

                    ),
                  ],
                borderRadius: BorderRadius.circular(10)
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => InscriptionAdmin(),
                  )
                  );
                },
                child: Text(
                    "Créer un compte",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ) ,
                ),
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.orangeAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,left: 20, right: 20),
              width: double.infinity,
              height: 50,
              decoration:BoxDecoration(
                boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Couleur de l'ombre
                  spreadRadius: -1, // Écart de l'ombre
                  blurRadius: 2, // Flou de l'ombre
                  offset: Offset(4, -4), // Position de l'ombre (horizontal, vertical)
                  blurStyle: BlurStyle.inner,

                ),

              ],
                  borderRadius: BorderRadius.circular(10),
            ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ConnexionCode(),));
                },
                child: Text(
                  "Se connecter",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ) ,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),


      )
    );
  }
}
