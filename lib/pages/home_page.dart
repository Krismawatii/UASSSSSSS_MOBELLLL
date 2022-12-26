import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';

class HomePage extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext) {
    if (itemList == null) {
      itemList = List<Item>();
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("KELOMPOK 3"),
      )),
    );

    //WEI BUTTON START TEK OPO NGUNU YA, CEK APIK
  }
}
