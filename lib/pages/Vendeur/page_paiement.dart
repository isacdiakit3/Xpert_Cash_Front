import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/constante.dart';


class PagePaiement extends StatefulWidget {
  const PagePaiement({super.key});

  @override
  State<PagePaiement> createState() => _PagePaiementState();
}

class _PagePaiementState extends State<PagePaiement> {


  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: myColor,
        title: Text(
          "Mode de paiement",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        widthFactor: 1,
        heightFactor: 1,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: viewer()
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(

                child: Text(
                  "Valider la commande",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: myColor,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )

                ),
              ),
            )


          ],
        ),
      ),
    );
  }
  Widget viewer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _color = _color == Colors.black ? Colors.orange : Colors.black;
                });
              },
              child: Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                    shape: BoxShape.rectangle,
                    border:Border.all(
                        color: _color,
                        width: 1.0)
                ),
                child: ListView(

                  children: <Widget>[
                    ListTile(
                      hoverColor: Colors.orange,
                      selectedColor: Colors.orangeAccent,
                      contentPadding: EdgeInsets.only(top: 10),
                      title: Text(
                        "Cash",

                        textAlign: TextAlign.center,
                        selectionColor: Colors.orange,
                        style: TextStyle(
                            color: _color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  border:Border.all(
                      color: Colors.black,
                      width: 1.0)
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    hoverColor: Colors.orange,
                    selectedColor: Colors.orangeAccent,
                    contentPadding: EdgeInsets.only(top: 10),
                    title: Text(
                      "Banque",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  border:Border.all(
                      color: Colors.black,
                      width: 1.0)
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    hoverColor: Colors.orange,
                    selectedColor: Colors.orangeAccent,
                    contentPadding: EdgeInsets.only(top: 10),
                    title: Text(
                      "Mobile money",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  border:Border.all(
                      color: Colors.black,
                      width: 1.0)
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    hoverColor: Colors.orange,
                    selectedColor: Colors.orangeAccent,
                    contentPadding: EdgeInsets.only(top: 10),
                    title: Text(
                      "Credit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}



