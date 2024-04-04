import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/Vendeur/page_vente.dart';
import 'package:xpert_cash_front/pages/connexion.dart';
import 'package:xpert_cash_front/pages/constante.dart';
import 'inscription_admin.dart';

class ConnexionCode extends StatefulWidget {
  const ConnexionCode({super.key});

  @override
  State<ConnexionCode> createState() => _ConnexionCodeState();
}

class _ConnexionCodeState extends State<ConnexionCode> {

  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  int code = 0;


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
                height: screenHeight*0.4,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Image.asset(
                        "assets/images/femmephone.png",
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
                margin: EdgeInsets.only(top: 10 ),
                child: Text(
                  "CONNEXION",
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
                                labelText: "Code d'accès",
                                hintText: "Entrez votre code d'accès",
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
                              onSaved: (value) => code = value! as int,
                              keyboardType: TextInputType.number,
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
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => PageVente(),)
                                );
                              },
                              child: Text("Connexion",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Se connecter avec un "),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Connexion()));
                                  },
                                  child: Text(
                                    "email",
                                    style: TextStyle(
                                        color: (myColor),
                                        decoration: TextDecoration.underline),
                                  )
                              )
                            ],
                          )
        
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
                  margin: EdgeInsets.only(bottom: 15),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InscriptionAdmin()));
                    },
                    child: Text("Creer un compte",
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
