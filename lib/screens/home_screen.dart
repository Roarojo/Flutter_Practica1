import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //declaracion de varibles
    int contador = 0;

    return Scaffold(
      //para quitar el error quitamos el const
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Numero de Clicks",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$contador', //El $ sirve para agregar variables
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              'Clicks',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//mueve la posicion del boton
      floatingActionButton: FloatingActionButton(
        //child: const Text('Hola'), //Texto en el boton
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print('hola: $contador'); //se imprime en consola
        },
      ),
    );
  }
}
