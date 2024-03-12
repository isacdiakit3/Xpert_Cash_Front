import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Manager/gestion_tresorerie.dart';
import 'package:xpert_cash_front/pages/Manager/produit.dart';
import 'package:xpert_cash_front/pages/constante.dart';

import '../Vendeur/client_page.dart';
import '../Vendeur/page_vente.dart';
import 'form_depense.dart';


class Depense extends StatefulWidget {
  const Depense({super.key});

  @override
  State<Depense> createState() => _DepenseState();
}

class _DepenseState extends State<Depense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Depense",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: myColor,
      ),
      drawer: drawer(context),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormDepense(),));
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
Widget drawer (BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white
    ),
    width: 340,
    child: Column(
      children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: myColor,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 250),
                      child: Text(
                        "Moussa Hubert Ouologuem",
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white ,
                          fontSize:20,
                          fontWeight: FontWeight.bold ,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: true,
                          applyHeightToLastDescent: true,
                        ),
                      ),
                    ),
                    Text(
                        "Administrateur",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:10,
                          fontWeight:  FontWeight.bold,
                        )
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.lock,
                    size: 35,
                    color: Colors.white,
                  ),
                )
              ],
            )
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageVente(),
                )
            );
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset("assets/images/Cart.png"),
                ),
                Text("Ventes" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClientPage(),
                )
            );
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset("assets/images/Community.png"),
                ),
                Text("Clients" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Produit(),
                )
            );
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset("assets/images/Product.png"),
                ),
                Text("Produits" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Depense(),
                )
            );
          },

          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset(
                    "assets/images/Money_bag.png",
                  ),
                ),
                Text("Depenses" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GestionTresorerie(),
                )
            );
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset("assets/images/Money_management.png"),
                ),
                Text("Gestion de trésorérie" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 10 , right: 40),
                  child: Image.asset("assets/images/Settings.png"),
                ),
                Text("Paramètres" , style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
