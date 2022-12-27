// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    _biodata = await DbHelper.getItemList();
  }

  Future<void> _delete(int id) async {
    print(id);
    await DbHelper.delete(id);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder(
      future: _getBiodata(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: _biodata.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: (() {}),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (() {
                    Fluttertoast.showToast(
                      msg: "Success Delete",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    );
                    _delete(_biodata[index].nim);
                  }),
                ),
                title: Text(_biodata[index].nama),
                subtitle: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('NIM : ${_biodata[index].nim}'),
                      ],
                    )),
              ),
            );
          },
        );
      },
    ));
  }
}
