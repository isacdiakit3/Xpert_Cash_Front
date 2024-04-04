import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_paiement.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_vente.dart';




class Vente extends StatefulWidget {
// Déclarez un champ pour stocker la fonction d'incrémentation du compteur
  final void Function() incrementCounter;
  const  Vente(
      {Key? key, required this.incrementCounter}
      )
      : super(
      key: key
  );




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
              "50 000",
              style: TextStyle(
                  color: Colors.white,
                fontSize: 18
              ),
            ),
          ),
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
                 margin: EdgeInsets.only(right: 20, left: 20),
                 child: ListView(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: [
                         GestureDetector(
                           onTap: (){
                              widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                     fontSize: 12
                                   ),
                                 ),
                                 Container(
                                   width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/livre.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Livre",
                                     style: TextStyle(
                                         fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                         fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
                         GestureDetector(
                           onTap: (){
                             widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12
                                   ),
                                 ),
                                 Container(
                                     width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/stylo.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Stylo",
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                       fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
                         GestureDetector(
                           onTap: (){
                             widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12
                                   ),
                                 ),
                                 Container(
                                     width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/imprimante.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Imprimante",
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                       fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,

                       children: [
                         GestureDetector(
                           onTap: (){
                             widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12
                                   ),
                                 ),
                                 Container(
                                     width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/usb.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Clé USB",
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                       fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
                         GestureDetector(
                           onTap: (){
                             widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12
                                   ),
                                 ),
                                 Container(
                                     width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/mac.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Macbook pro",
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                       fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
                         GestureDetector(
                           onTap: (){
                             widget.incrementCounter(); // Appelez la fonction du callback
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color(0xFF8D8A8A),
                             ),
                             width: 100,
                             height: 100,
                             child: Column(
                               children: [
                                 Text(
                                   "10 000",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12
                                   ),
                                 ),
                                 Container(
                                     width: double.infinity,
                                     height: 55,
                                     child: Image.asset("assets/images/tissu.png",fit: BoxFit.cover,)),
                                 Text(
                                     "Tissus",
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                     )
                                 ),
                                 Text(
                                     "Stock : 200",
                                     style: TextStyle(
                                       fontSize: 8,
                                       color: Colors.white,
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ),
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
