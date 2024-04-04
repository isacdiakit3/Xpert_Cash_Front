import 'package:flutter/material.dart';

import '../constante.dart';
import 'PaiementCredit.dart';


class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Credit",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: myColor,

        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20 , left: 20 , top: 10 , bottom: 10),
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
            Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PaiementCredit(),));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    "assets/images/chaka1.png",
                                    fit: BoxFit.contain,
                                    width: double.infinity,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text("Chaka Diakité"),
                                    Text("75 15 55 44")
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaiementCredit(),));
                                },
                                icon: Icon(Icons.double_arrow)
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/images/vectory.png",
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text("Hanna Traoré"),
                                  Text("75 15 55 44")
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaiementCredit(),));
                              },
                              icon: Icon(Icons.double_arrow)
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),

          ],
        ),
      );
  }
}
