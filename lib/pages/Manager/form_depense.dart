import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/constante.dart';


class FormDepense extends StatefulWidget {
  const FormDepense({super.key});

  @override
  State<FormDepense> createState() => _FormDepenseState();
}

class _FormDepenseState extends State<FormDepense> {

  final _formkey = GlobalKey<FormState>();
  String designation = "";
  int quantite = 0;
  int prix = 0;
  String categorie = "";
  String pays = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: myColor,
        title: Text(
          "Nouvelle depense",
          style: TextStyle(
            color: Colors.white,
          ),
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
                                onSaved: (value) => designation = value!,
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
                                onSaved: (value) => quantite = value! as int,
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
                                onSaved: (value) => prix = value! as int,
                                keyboardType: TextInputType.number,
                                autocorrect: true,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                              height: 50,
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Categorie",
                                  hintText: "Selectionner votre categorie",
                                  border: OutlineInputBorder(),
                                ),
                                items: [
                                  // Add your list of domain values here
                                  DropdownMenuItem<String>(
                                    value: "domain1",
                                    child: Text("Transport"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: "domain2",
                                    child: Text("Formation"),
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
                                onSaved: (value) => categorie = value!,
                                onChanged: (String? value) {
                                  setState(() {
                                    categorie = value!;
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
                                  labelText: "Categorie",
                                  hintText: "Selectionner votre categorie",
                                  border: OutlineInputBorder(),
                                ),
                                items: [
                                  // Add your list of domain values here
                                  DropdownMenuItem<String>(
                                    value: "domain1",
                                    child: Text("Transport"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: "domain2",
                                    child: Text("Formation"),
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
                                onSaved: (value) => categorie = value!,
                                onChanged: (String? value) {
                                  setState(() {
                                    categorie = value!;
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
                                  labelText: "Categorie",
                                  hintText: "Selectionner votre categorie",
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
                                    child: Text("Burkina faso"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: "domain3",
                                    child: Text("Niger"),
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
