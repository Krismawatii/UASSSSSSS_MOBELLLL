// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/models/item.dart';

class ListData extends StatefulWidget {
  const ListData({
    Key key,
    this.nim,
    this.nama,
  }) : super(key: key);

  final String nim;
  final String nama;

  @override
  State<ListData> createState() => _ListData(nim, nama);
}

class _ListData extends State<ListData> {
  _ListData(String nim, String nama);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          // ListJoss(nim: "2041720068", nama: "Faiz");
        ],
      ),
    );
  }
}
