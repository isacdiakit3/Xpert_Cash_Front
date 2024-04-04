import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/modif_panier.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_paiement.dart';

import '../constante.dart';
import 'ajout_client.dart';


class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {

  String _prix = "50 000";
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void reset() {
    setState(() {
      _counter = 0;
    });
  }

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
                    "$_counter",
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
              "$_prix",
              style: TextStyle(
                  color: Colors.white,
                fontSize: 18
              ),
            ),
          ),
          Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("livre x 5"),
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ModifPanier(),));
                                  },
                                icon: Icon(Icons.edit_note))
                          ],
                        ),
                        Text("30 000")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("tissus x 3"),
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ModifPanier(),));
                                  },
                                icon: Icon(Icons.edit_note))
                          ],
                        ),
                        Text("60 000")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("iphone 15 x 2"),
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ModifPanier(),));
                                },
                                icon: Icon(Icons.edit_note))
                          ],
                        ),
                        Text("300 000")
                      ],
                    ),
                  ],
                ),
              )
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PagePaiement(),));
              },
              child: Text("Charger la commande",
                style: TextStyle(fontSize: 20 , color: Colors.white),
                textAlign: TextAlign.center,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
