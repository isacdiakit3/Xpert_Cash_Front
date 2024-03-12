import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_paiement.dart';
import 'package:xpert_cash_front/pages/Vendeur/panier.dart';

import 'ajout_client.dart';




class Vente extends StatefulWidget {
  const Vente({super.key});

  @override
  State<Vente> createState() => _VenteState();
}

class _VenteState extends State<Vente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200], // Couleur de fond de la barre de recherche
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher...', // Texte d'invite dans la barre de recherche
                icon: Icon(Icons.search), // Icône de recherche à gauche
                border: InputBorder.none, // Supprime la bordure de la barre de recherche
              ),
              onChanged: (value) {
                // Logique à exécuter lors de la modification du texte dans la barre de recherche
              },
            ),
          ),
          Expanded(child: Placeholder()),
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
