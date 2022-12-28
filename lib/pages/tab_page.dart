import 'package:flutter/material.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/list_data.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF151026),
            title: const Text("UAS KELOMPOK 3"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: "Biodata"),
                Tab(text: "List Biodata"),
              ],
            ),
          ),
          body: const TabBarView(children: <Widget>[
            BiodataPage(),
            ListData(),
          ]),
        ),
      ),
    );
  }
}
