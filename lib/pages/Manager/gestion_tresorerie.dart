import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Manager/credit.dart';
import 'package:xpert_cash_front/pages/Manager/produit.dart';
import 'package:xpert_cash_front/pages/Manager/tranfert_fond.dart';
import 'package:xpert_cash_front/pages/constante.dart';

import '../Vendeur/client_page.dart';
import '../Vendeur/page_vente.dart';
import 'depense.dart';
import 'historique.dart';


class GestionTresorerie extends StatefulWidget {
  const GestionTresorerie({super.key});

  @override
  State<GestionTresorerie> createState() => _GestionTresorerieState();
}

class _GestionTresorerieState extends State<GestionTresorerie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: myColor,
        centerTitle: true,
        title: Text(
          "Gestion de trésorérie",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      drawer: drawer(context),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: gris,
              borderRadius: BorderRadius.circular(15.0), // Ajustez la valeur selon vos préférences
            ),
            width: double.infinity,
            height: 165,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Caisse :",
                        style: TextStyle(
                          fontSize: 17
                        ),
                    ),
                    Text(
                        '200 000',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    )

                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Banque :",
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                    Text(
                      '200 000',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    )

                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mobile money :",
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                    Text(
                      '200 000',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    )

                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Crédit :",
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                    Text(
                      '200 000',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TransfertFond(),));                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10 , left: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: gris,
                    ),
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        Image.asset("assets/images/Transfer.png"),
                        Text(
                            "Transfert de fond",
                          softWrap: true,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Credit(),));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: gris,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Money.png"),
                        Text(
                          "Paiement de crédit",
                          softWrap: true,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Historique(),));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10 , right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: gris,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/File.png"),
                        Text(
                          "Historique",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/images/wari.png",fit: BoxFit.cover,),
              )
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
