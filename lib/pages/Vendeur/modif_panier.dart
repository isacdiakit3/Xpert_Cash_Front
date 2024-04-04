import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xpert_cash_front/pages/Vendeur/panier.dart';
import 'package:xpert_cash_front/pages/constante.dart';



class ModifPanier extends StatefulWidget {
  const ModifPanier({super.key});

  @override
  State<ModifPanier> createState() => _ModifPanierState();
}

class _ModifPanierState extends State<ModifPanier> {
  int count = 0;
  TextEditingController _controller = TextEditingController(text: '10 000');
  TextEditingController _controler = TextEditingController(text: "5");


  void incremente(){
    setState(() {
      count++;
    });
  }
  void decremente(){
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Livre",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: myColor,
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.redAccent,
                ),
                  onPressed: (){},
              )
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container()
            ),
            Text("Prix Unitaire"),
            TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Quantité"),
            Container(
              child: Container(
                child: TextField(
                  controller: _controler,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: myColor,
                    prefixIcon: IconButton(
                      onPressed: decremente,
                      icon: Icon(Icons.remove),
                    ),
                    suffixIcon:  IconButton(
                      onPressed: incremente,
                      icon: Icon(Icons.add),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container()
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Panier(),));
                },
                child: Text("Enregistrer le produit",
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
