import 'package:flutter/material.dart';
import 'package:xpert_cash_front/pages/constante.dart';



class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("Profil client"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(15),
                  child: CircleAvatar(
                    child: Image.asset("assets/images/chaka1.png",
                        fit: BoxFit.contain,
                        width: double.infinity),
                  ),
                ),
                Text("Chaka Diakité", style: TextStyle(
                  fontSize: 30
                ),),
               Container(
                 margin: EdgeInsets.all(30),
                 child: Row(
                   children: [
                     Icon(
                       Icons.phone_in_talk_rounded,  // Utilisez l'icône de téléphone à partir de FlutterIcons
                       size: 40.0,
                     ),
                     Container(
                      margin : EdgeInsets.only(left: 20),
                       child: Text("+223 75 15 55 44",
                       style: TextStyle(
                         fontSize: 20
                       ),
                     ),
                     )
                   ],
                 ),
               ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Row(

                    children: [
                      Icon(
                        Icons.mail,  // Utilisez l'icône de téléphone à partir de FlutterIcons
                        size: 40.0,
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Text("ok@gmail.com",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Row(

                    children: [
                      Icon(
                        Icons.gps_fixed,  // Utilisez l'icône de téléphone à partir de FlutterIcons
                        size: 40.0,
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Text("faladie sema",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                      ),

                          ],
                        ),
                      ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Row(

                    children: [
                      Icon(
                        Icons.credit_card,  // Utilisez l'icône de téléphone à partir de FlutterIcons
                        size: 40.0,
                      ),
                      Column(
                        children: [
                          Container(
                            margin : EdgeInsets.only(left: 20),
                            child: Text("50 000",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                          Container(
                            margin : EdgeInsets.only(left: 0 ,),
                            child: Text("A payer",
                              style: TextStyle(
                                  fontSize: 10
                              ),),
                          ),
                        ],
                      ),
                      Expanded(child: Text(
                        ""
                      )
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_drop_down_circle_outlined),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
