import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/ajout_client.dart';
import 'package:xpert_cash_front/pages/constante.dart';


class FormClient extends StatefulWidget {
  const FormClient({super.key});

  @override
  State<FormClient> createState() => _FormClientState();
}

class _FormClientState extends State<FormClient> {

  final _formkey = GlobalKey<FormState>();
  String email = "";
  String prenom = "";
  String nom = "";
  String adresse = "";
  int telephone = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: myColor,
        centerTitle: true,
        title: Text(
          "Nouveau client"
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
                      child: Image.asset("assets/images/client.png",
                          fit: BoxFit.contain,
                          width: double.infinity),

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
                                  labelText: "Adresse",
                                  hintText: "Entrez l'adresse du client",
                                  border: OutlineInputBorder(),
                                ),

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Ce champ ne dois pas etre vide";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) => adresse = value!,
                                keyboardType: TextInputType.text,
                                autocorrect: true,
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.only(top: 10,bottom: 10, right: 20,left: 20),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AjoutClient(),));
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
