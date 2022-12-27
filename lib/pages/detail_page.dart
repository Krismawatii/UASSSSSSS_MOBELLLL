import 'package:flutter/material.dart';
import 'package:uas_kelompok3/pages/edit_data.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  Detail({
    Key key,
    this.id,
    this.nim,
    this.nama,
    this.alamat,
    this.jeniskelamin,
  }) : super(key: key);

  int id;
  int nim;
  String nama;
  String alamat;
  String jeniskelamin;

  @override
  // ignore: no_logic_in_create_state
  State<Detail> createState() =>
      // ignore: no_logic_in_create_state
      _detailPage(id, nim, nama, alamat, jeniskelamin);
}

// ignore: camel_case_types
class _detailPage extends State<Detail> {
  int _id;
  int _nim;
  String _nama;
  String _alamat;
  String _jeniskelamin;

  _detailPage(
    int id,
    int nim,
    String nama,
    String alamat,
    String jeniskelamin,
  ) {
    _id = id;
    _nim = nim;
    _nama = nama;
    _alamat = alamat;
    _jeniskelamin = jeniskelamin;
  }

  //  _detailPage({Key key, this.nama});
  // const DetailPage({Key key, required}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF151026),
          title: const Text("Detail Page"),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 80),
              child: const Icon(
                Icons.person,
                size: 150,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: Text(_nim.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: Text(_nama.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: Text(_alamat.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: Text(_jeniskelamin.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditPage(
                          id: int.parse(_id.toString()),
                          nim: int.parse(_nim.toString()),
                          nama: _nama.toString(),
                          alamat: _alamat.toString(),
                          jeniskelamin: _jeniskelamin.toString(),
                        ),
                      ));
                },
                child: Text('Edit'),
              ),
            )
          ],
        ),
      ),
    );

    // TODO: implement build
  }

  Widget buttonElevated() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Back", style: TextStyle(fontSize: 20)),
    );
  }
}
