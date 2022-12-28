// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uas_kelompok3/pages/detail_page.dart';

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
    // print(id);
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
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: (() {
                    Fluttertoast.showToast(
                      msg: "Success Delete",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    );
                    _delete(_biodata[index].id);
                  }),
                ),
                title: Text(
                  _biodata[index].nama,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('NIM : ${_biodata[index].nim}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detail(
                        id: int.parse(_biodata[index].id.toString()),
                        nim: int.parse(_biodata[index].nim.toString()),
                        nama: _biodata[index].nama.toString(),
                        alamat: _biodata[index].alamat.toString(),
                        jeniskelamin: _biodata[index].jeniskelamin.toString(),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    ));
  }
}
