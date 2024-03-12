import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/constante.dart';



class ModifPanier extends StatefulWidget {
  const ModifPanier({super.key});

  @override
  State<ModifPanier> createState() => _ModifPanierState();
}

class _ModifPanierState extends State<ModifPanier> {
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

    );
  }
}
