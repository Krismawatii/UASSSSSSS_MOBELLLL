import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/tab_page.dart';

class HomePage extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    if (itemList == null) {
      itemList = List<Item>();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF151026),
          title: Text("KELOMPOK 3"),
        ),
        body: Center(
            child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 30, right: 30)),
            child: Text(
              'Start',
              style: TextStyle(fontSize: 24),
            ),
          ),
        )),
      ),
    );

    //WEI BUTTON START TEK OPO NGUNU YA, CEK APIK
  }
}
