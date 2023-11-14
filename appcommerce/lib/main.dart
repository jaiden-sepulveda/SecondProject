import 'package:flutter/material.dart';
import 'package:appcommerce/Pages/second_page.dart';
import 'package:appcommerce/Pages/my_home_page.dart';//Se importa archivo para poder ejecutar clase MyHomePage

//Importaciones firebase 
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter appcommerce',
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),*/
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => MyHomePage(),
        "/Second": (BuildContext context) =>const SecondPage(),
      },
    );
  }
}
