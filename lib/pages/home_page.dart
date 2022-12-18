import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  final txt1 = TextEditingController();
  final txt2 = TextEditingController();
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uas Mobile'),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                'BIODATA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              margin: const EdgeInsets.only(top: 20),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(label: Text('NIM :')),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: txt1,
              ),
              padding: const EdgeInsets.only(left: 5, right: 5),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(label: Text('Nama :')),
                controller: txt2,
              ),
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 5, right: 5),
            ),
            Container(
              child: ElevatedButton(
                child: Text("Proses"),
                onPressed: () {},
              ),
              margin: const EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
