import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/pages/home_page.dart';
<<<<<<< HEAD
import 'package:uas_kelompok3/pages/item_page.dart';
=======
>>>>>>> 32b8f9e762351c51300d94318e1d03e32a7b47cb

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
<<<<<<< HEAD
      '/item': (context) => ItemPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelompok3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
    );
  }
}
=======
      // '/item': (context) => ItemPage(),
    },
  ));
}
>>>>>>> 32b8f9e762351c51300d94318e1d03e32a7b47cb
