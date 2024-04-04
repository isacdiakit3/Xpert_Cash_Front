import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/connexion_code.dart';
import 'package:xpert_cash_front/pages/inscription_entreprise.dart';
import 'constante.dart';

class InscriptionAdmin extends StatefulWidget {
  const InscriptionAdmin({super.key});

  @override
  State<InscriptionAdmin> createState() => _InscriptionAdminState();
}

class _InscriptionAdminState extends State<InscriptionAdmin> {


  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  String password = "";
  String email = "";
  String prenom = "";
  String nom = "";
  int telephone = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Image.asset(
                        "assets/images/admin.png",
                        fit: BoxFit.fill,
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

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "CREATION DE COMPTE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: ecriture,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 15),
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
                                labelText: "Prenom",
                                hintText: "Entrez votre prenom",
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
                                labelText: "nom",
                                hintText: "Entrez votre nom",
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
                                labelText: "Telephone",
                                hintText: "Entrez votre numero de telephone",
                                border: OutlineInputBorder(),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => telephone = value! as int,
                              keyboardType: TextInputType.phone,
                              autocorrect: true,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Entrez votre email",
                                border: OutlineInputBorder(),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => email = value!,
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: true,
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Mot de passe",
                                hintText: "Entrez votre mot de passe",
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureText =
                                      !_obscureText; // Inverser l'état du texte masqué
                                    });
                                  },
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons
                                        .visibility,
                                    // Choisir l'icône basée sur l'état du texte masqué
                                    color: Colors.grey,
                                  ),
                                ),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => password = value!,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect: true,
                              obscureText: _obscureText,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Confirmation",
                                hintText: "confirmer votre mot de passe",
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureText =
                                      !_obscureText; // Inverser l'état du texte masqué
                                    });
                                  },
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons
                                        .visibility,
                                    // Choisir l'icône basée sur l'état du texte masqué
                                    color: Colors.grey,
                                  ),
                                ),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Ce champ ne dois pas etre vide";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) => password = value!,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect: true,
                              obscureText: _obscureText,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => InscriptionEntreprise(),));
                              },
                              child: Text("Suivant",
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
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
