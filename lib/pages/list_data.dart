// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';

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

  List<Item> _items = <Item>[];

  @override
  Widget build(BuildContext context) {
    var items = DbHelper.getItemList();

    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              title: Row(children: <Widget>[
                Text(items[index].nim),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ]),
            ));
          }),
    );
  }
}
