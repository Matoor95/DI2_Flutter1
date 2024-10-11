import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connexion',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ConnexionPage(),
    );
  }
}

class ConnexionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 500,  // Limiter la hauteur pour éviter un débordement
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Card.outlined(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("assets/dash.png")),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Connectez-vous pour accéder à votre espace et voir tous les matchs, les résultats en temps réel. Ne manquez rien de la compétition.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration:InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color:Colors.red, width:2.0

                          ),
                            ),
                          focusedBorder:OutlineInputBorder(
                            borderSide:BorderSide(color:Colors.yellow, width:5.0)
                          ),

                      
                      )
                     
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          // TODO: Faire la connexion à l'API
                          // print("Connexion effectuée avec succès!");
                        },
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                              color: Theme.of(context).indicatorColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



