import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/connexion_code.dart';

import 'connexion.dart';
import 'constante.dart';

class InscriptionEntreprise extends StatefulWidget {
  const InscriptionEntreprise({super.key});

  @override
  State<InscriptionEntreprise> createState() => _InscriptionEntrepriseState();
}

class _InscriptionEntrepriseState extends State<InscriptionEntreprise> {


  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  String password = "";
  String email = "";
  String prenom = "";
  String nom = "";
  int telephone = 0;
  String domaine = "";
  String pays = "";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: screenHeight*0.2,
                child:Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Image.asset(
                        "assets/images/entreprise.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 8.0,
                      top: 8.0,// Ajustez la position de l'icône selon vos besoins
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          // Ajoutez la logique pour retourner en arrière
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                child: Text(
                  "CREATION DE COMPTE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: ecriture,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                child: Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Nom de l'entreprise",
                                hintText: "Entrez le nom de votre entreprise",
                                border: OutlineInputBorder(),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => prenom = value!,
                              keyboardType: TextInputType.name,
                              autocorrect: true,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Ville",
                                hintText: "Entrez votre ville",
                                border: OutlineInputBorder(),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => nom = value!,
                              keyboardType: TextInputType.text,
                              autocorrect: true,
                            ),
                          ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                        height: 50,
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Domaine d'activité",
                            hintText: "Sélectionner votre domaine d'activité",
                            border: OutlineInputBorder(),
                          ),
                          items: [
                            // Add your list of domain values here
                            DropdownMenuItem<String>(
                              value: "domain1",
                              child: Text("Agriculture"),
                            ),
                            DropdownMenuItem<String>(
                              value: "domain2",
                              child: Text("Education"),
                            ),
                            // Add more items as needed
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Ce champ ne doit pas être vide";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) => domaine = value!,
                          onChanged: (String? value) {
                            setState(() {
                              domaine = value!;
                            });
                          },
                        ),
                      ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                            height: 50,
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: "Sélectionner votre pays",
                                border: OutlineInputBorder(),
                              ),
                              items: [
                                // Add your list of domain values here
                                DropdownMenuItem<String>(
                                  value: "domain1",
                                  child: Text("Mali"),
                                ),
                                DropdownMenuItem<String>(
                                  value: "domain2",
                                  child: Text("Cote d'Ivoire"),
                                ),
                                // Add more items as needed
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne doit pas être vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => pays = value!,
                              onChanged: (String? value) {
                                setState(() {
                                  pays = value!;
                                });
                              },
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 50,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context , MaterialPageRoute(builder: (context) => Connexion(),));
                              },
                              child: Text("Enregistrer",
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
                ),
              ),
              Expanded(child: Container()),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ConnexionCode()));
                    },
                    child: Text("Connexion",
                      style: TextStyle(fontSize: 20 , color: Colors.white),
                      textAlign: TextAlign.center,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
