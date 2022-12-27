// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class DetailPage extends StatelessWidget {
//   //const DetailPage({Key key, required this.nim}) : super(key: key);
//    const DetailPage({Key key, required});

//   static const appTitle = 'Home';

//   @override
//   //State<DetailPage> createState() => _DetailPage();
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Column(children: [

//       ]),
//     )
//   }
// }

import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/list_data.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  Detail({
    Key key,
    this.nim,
    this.nama,
    this.alamat,
    this.jeniskelamin,
  }) : super(key: key);

  int nim;
  String nama;
  String alamat;
  String jeniskelamin;

  @override
  // ignore: no_logic_in_create_state
  State<Detail> createState() => _detailPage(nim, nama, alamat, jeniskelamin);
}

// ignore: camel_case_types
class _detailPage extends State<Detail> {
  int _nim;
  String _nama;
  String _alamat;
  String _jeniskelamin;

  _detailPage(int nim, String nama, String alamat, String jeniskelamin) {
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
          backgroundColor: const Color.fromARGB(0, 11, 127, 148),
          title: const Text("Detail Page"),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 80),
              child: const Icon(
                Icons.person,
                size: 150,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(_nim.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(_nama.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(_alamat.toString()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(_jeniskelamin.toString()),
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

// home: Scaffold(
//           body: Container(
//               child: ElevatedButton(
//             onPressed: () {},
//             child: Text("Back", style: TextStyle(fontSize: 20)),
//           ))),
//     );
