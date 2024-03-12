import 'package:flutter/material.dart';

import '../constante.dart';
import 'ajout_client.dart';


class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: myColor,
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Panier(),));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Vente",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 40,
                height: 40,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.orangeAccent,
                        style: BorderStyle.solid
                    )
                ),
                child: Text(
                    "8",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                ),
              )
            ],
          ),
        ),

        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AjoutClient(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/Vector.png",
                width: 30, // Ajustez la largeur de l'image selon vos besoins
                height: 30, // Ajustez la hauteur de l'image selon vos besoins
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Text(
              "8552445236",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),

        ],
      ),
    );
  }
}
