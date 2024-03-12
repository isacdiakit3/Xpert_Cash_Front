import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Manager/produit.dart';

import '../constante.dart';


class FormProduit extends StatefulWidget {
  const FormProduit({super.key});

  @override
  State<FormProduit> createState() => _FormProduitState();
}

class _FormProduitState extends State<FormProduit> {

  final _formkey = GlobalKey<FormState>();
  String nom = "";
  int prix = 0;
  int cout = 0;
  int stock = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        centerTitle: true,
        title: Text(
            "Nouveau produit"
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(15),
                    child: CircleAvatar(
                      child: Image.asset("assets/images/produit.png",
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                      ),

                    ),
                  ),
                  Positioned(
                      width: 40,
                      height: 40,
                      bottom: 30,
                      right: 20,
                      child: GestureDetector(
                        onTap: (){

                        },

                        child: CircleAvatar(
                          child: Image.asset("assets/images/gallery.png",

                              width: double.infinity),
                        ),
                      )
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 1000,
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
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
                                  labelText: "Nom",
                                  hintText: "Entrez le nom",
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
                                  labelText: "nom",
                                  hintText: "Entrez le prix unitaire",
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
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                              height: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Cout",
                                  hintText: "Entrez le cout de la marchandise",
                                  border: OutlineInputBorder(),
                                ),

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Ce champ ne dois pas etre vide";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) => prix = value! as int,
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                              height: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Stock",
                                  hintText: "Entrez le stock",
                                  border: OutlineInputBorder(),
                                ),

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Ce champ ne dois pas etre vide";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) => cout = value! as int,
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Produit(),));
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

                      ),
                    ],
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
