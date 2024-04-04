import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Manager/depense.dart';
import 'package:xpert_cash_front/pages/Manager/produit.dart';
import 'package:xpert_cash_front/pages/Vendeur/Vente.dart';
import 'package:xpert_cash_front/pages/Vendeur/ajout_client.dart';
import 'package:xpert_cash_front/pages/Vendeur/client_page.dart';
import 'package:xpert_cash_front/pages/Vendeur/panier.dart';
import 'package:xpert_cash_front/pages/constante.dart';

import '../Manager/gestion_tresorerie.dart';



class PageVente extends StatefulWidget {
  const PageVente({super.key});


  @override
  State<PageVente> createState() => _PageVenteState();
}

class _PageVenteState extends State<PageVente> {

  int prix = 0;
  int _currentIndex = 0;
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
      prix+5000;
    });
  }
  void reset() {
    setState(() {
      _counter = 0;
      prix = 0 ;
    });
  }


  setCurrentIndex(int index){
    setState((){
      _currentIndex = index;
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
          onLongPress: (){
            reset();// Appelez la fonction du callback
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
        drawer: drawer(context),
        drawerScrimColor: Colors.black12,
      extendBody: true,
      body: [
        Vente(incrementCounter : incrementCounter),
        Panier()
      ][_currentIndex]
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
                Text("Gestion de trésorérie" , style: TextStyle(fontSize: 20),
                )
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
