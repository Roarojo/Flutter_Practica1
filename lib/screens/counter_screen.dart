import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //declaracion de propiedades
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    //declaracion de varibles
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      //para quitar el error quitamos el const
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Numero de Clicks", style: fontSize30),
            Text('$contador', style: fontSize30),
            const Text('Clicks', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //mueve la posicion del boton
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, //para agregar separacion entre los botones y acomodo
        children: [
          //Boton 1
          FloatingActionButton(
            //child: const Text('Hola'), //Texto en el boton
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => setState(() => contador++),
          ),

          //Boton 2
          FloatingActionButton(
            //child: const Text('Hola'), //Texto en el boton
            child: const Icon(Icons.exposure_outlined),
            onPressed: () => setState(() => contador = 0),
          ),

          //Boton 3
          FloatingActionButton(
            //child: const Text('Hola'), //Texto en el boton
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => setState(() => contador--),
          ),
        ],
      ),
    );
  }
}
