import 'package:flutter/material.dart';

import '../constante.dart';



class Historique extends StatefulWidget {
  const Historique({super.key});

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  String _selectedOption = 'Depenses';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Historique",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: myColor,
              bottom: TabBar(
                unselectedLabelColor: Color(0xFF8D8A8A),
                labelColor: Colors.white,
                  dividerColor: myColor,
                  indicatorColor: Color(0xFF8D8A8A),
                  automaticIndicatorColorAdjustment: false,
                  tabs : <Widget>[
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Ventes",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.account_balance_wallet)
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Depenses"
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(Icons.sell)
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Corbeille"
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.delete)
                        ],
                      ),
                    ),
                  ]
              ),
            ),
            body: TabBarView(
              children: [
                Column(
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
                            width: double.infinity,
                            margin: EdgeInsets.all(10),
                            child : ListView(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Livre",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Client",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Imprimante",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Client",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Transport",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Client",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                        )
                    ),

                  ],
                ),
                Column(
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
                            width: double.infinity,
                            margin: EdgeInsets.all(10),
                            child : ListView(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Livre",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Validateur",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Imprimante",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Validateur",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8A8A),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Transport",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("20/03/2024  12:19",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Quantité",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              Text("200",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text("Validateur",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("Hanna Traoré",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                              ))
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Text("Montant",style: TextStyle(
                                                color: Colors.white,
                                              )),
                                              Text("1 000 000",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15
                                                )
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                        )
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: DropdownButton(
                                icon: Icon(Icons.arrow_drop_down_circle_outlined),
                                elevation: 5,
                                iconEnabledColor: myColor,
                                alignment: Alignment.center,
                                value: _selectedOption,
                                  items: <String>["Depenses", "Ventes"].map<DropdownMenuItem<String>>((String value){
                                    return DropdownMenuItem(
                                      enabled: true,
                                      alignment: Alignment.centerLeft,
                                        value: value,
                                        child: Text(value));
                                  }
                                  ).toList(),
                                  onChanged: (newValue){
                                  setState(() {
                                    _selectedOption = newValue!;
                                  });
                                  }
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    width: double.infinity,
                                    child : ListView(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF8D8A8A),
                                            borderRadius: BorderRadius.circular(10),
                  
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Livre",style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text("20/03/2024  12:19",style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10
                                                    )
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text("Quantité",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          )),
                                                      Text("200",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("Validateur",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("Hanna Traoré",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                  
                                                  Column(
                                                    children: [
                                                      Text("Montant",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("1 000 000",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF8D8A8A),
                                            borderRadius: BorderRadius.circular(10),
                  
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Imprimante",style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                  Text("20/03/2024  12:19",style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10
                                                  ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text("Quantité",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          )),
                                                      Text("200",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("Validateur",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("Hanna Traoré",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                  
                                                  Column(
                                                    children: [
                                                      Text("Montant",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("1 000 000",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF8D8A8A),
                                            borderRadius: BorderRadius.circular(10),
                  
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Transport",style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                  Text("20/03/2024  12:19",style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10
                                                  ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text("Quantité",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          )),
                                                      Text("200",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("Validateur",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("Hanna Traoré",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                  
                                                  Column(
                                                    children: [
                                                      Text("Montant",style: TextStyle(
                                                        color: Colors.white,
                                                      )),
                                                      Text("1 000 000",style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      ))
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                child: Text("Vider la corbeille",
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
                ),
                  ],
                )
            ),

          ),
    );
  }
}
