import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/constante.dart';

import 'form_client.dart';


class AjoutClient extends StatefulWidget {
  const AjoutClient({super.key});

  @override
  State<AjoutClient> createState() => _AjoutClientState();
}

class _AjoutClientState extends State<AjoutClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: myColor,
        centerTitle: true,
        title: Text(
          "Selectionner un client",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormClient(),));
              },
              child: Text("Ajouter",
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


