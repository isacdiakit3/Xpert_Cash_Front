import 'package:flutter/material.dart';

import '../constante.dart';


class TransfertFond extends StatefulWidget {
  const TransfertFond({super.key});

  @override
  State<TransfertFond> createState() => _TransfertFondState();
}

class _TransfertFondState extends State<TransfertFond> {
  String selectedValue = "";
  String selectedValue2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Transfert de fond",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: myColor,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text("De", style: TextStyle(
                fontSize: 20 , fontWeight: FontWeight.bold
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: myColor,
                      value: 'caisse', // Valeur correspondante à la caisse
                      groupValue: selectedValue, // Valeur sélectionnée pour le groupe de boutons radio
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!; // Met à jour la valeur sélectionnée
                        });
                      },
                    ),
                    Text("Caisse"),
                  ],
                ),
                Text("2 000 000"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: myColor,
                      value: 'banque', // Valeur correspondante à la caisse
                      groupValue: selectedValue, // Valeur sélectionnée pour le groupe de boutons radio
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!; // Met à jour la valeur sélectionnée
                        });
                      },
                    ),
                    Text("Banque"),
                  ],
                ),
                Text("600 000"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: myColor,
                      value: 'mobileMoney', // Valeur correspondante à la caisse
                      groupValue: selectedValue, // Valeur sélectionnée pour le groupe de boutons radio
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!; // Met à jour la valeur sélectionnée
                        });
                      },
                    ),
                    Text("Mobile money"),
                  ],
                ),
                Text("127 300"),
              ],
            ),
            Text("Vers", style: TextStyle(
              fontSize: 20 , fontWeight: FontWeight.bold
            ),),
            Row(
              children: [
                Radio(
                  activeColor: Colors.red,
                  value: 'caisse', // Valeur correspondante à la caisse
                  groupValue: selectedValue2, // Valeur sélectionnée pour le groupe de boutons radio
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value!; // Met à jour la valeur sélectionnée
                    });
                  },
                ),
                Text("Caisse"),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor:Colors.red,
                  value: 'banque', // Valeur correspondante à la caisse
                  groupValue: selectedValue2, // Valeur sélectionnée pour le groupe de boutons radio
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value!; // Met à jour la valeur sélectionnée
                    });
                  },
                ),
                Text("Banque"),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: Colors.red,
                  value: 'mobileMoney', // Valeur correspondante à la caisse
                  groupValue: selectedValue2, // Valeur sélectionnée pour le groupe de boutons radio
                  onChanged: (value) {
                    setState(() {
                      selectedValue2 = value!; // Met à jour la valeur sélectionnée
                    });
                  },
                ),
                Text("Mobile money"),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: "Montant",
                suffixIcon: Icon(Icons.currency_exchange, color: myColor,)
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Transferer",
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
    );
  }
}
