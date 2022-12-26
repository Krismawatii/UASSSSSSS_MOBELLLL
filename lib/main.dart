// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_kelompok3/pages/page_biodata.dart';
import 'package:uas_kelompok3/pages/list_data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => BiodataPage(),
    },
  ));
}
