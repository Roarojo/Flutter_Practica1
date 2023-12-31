import 'package:flutter/material.dart';
import 'package:my_app_ejemplo/screens/counter_screen.dart';
import 'package:my_app_ejemplo/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner:
            false, //quita la leyenda "Debug" en el emulador

        //home: HomeScreen(), //Aqui hacemos referencia a la otra clase.
        //Para acceder a la otra clase
        home: CounterScreen());
  }
}
