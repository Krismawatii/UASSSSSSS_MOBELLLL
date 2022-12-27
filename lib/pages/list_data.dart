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
  State<ListData> createState() => _ListData();
}

class _ListData extends State<ListData> {
  List<Item> _biodata = [];

  Future<void> _getBiodata() async {
    List<Item> biodata = await DbHelper.getItemList();
    setState(() {
      _biodata = biodata;
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = DbHelper.getItemList();

    return Scaffold(
      body: ListView.builder(
          itemCount: _biodata.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              title: Row(children: <Widget>[
                Text(_biodata[index].nama),
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
