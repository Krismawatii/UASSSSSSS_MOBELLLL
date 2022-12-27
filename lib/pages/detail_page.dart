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
import 'dart:ffi';

import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/list_data.dart';

int globNim;

class Detail extends StatefulWidget {
  Detail({Key key, this.nim, this.nama}) : super(key: key);

  int nim;
  String nama;

  

  @override
  State<Detail> createState() => _detailPage();
}

class _detailPage extends State<Detail> {
  List<Item> _biodata = [];
   _detailPage({Key key, this.nama});
  // const DetailPage({Key key, required}) : super(key: key);

  Future<void> _getBiodata() async {
    _biodata = await DbHelper.getItemList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 11, 127, 148),
          title: Text("Detail Page"),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 80),
              child: Icon(
                Icons.person,
                size: 150,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
                child: FutureBuilder(
                  future: _getBiodata(),
                  builder: (context, snapshot) {
                    _getBiodata();
                  },
                )),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(this.),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(alamat),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135, right: 100, top: 20),
              child: Text(jeniskelamin.toString()),
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
