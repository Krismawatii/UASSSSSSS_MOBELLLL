// import 'package:flutter/cupertino.dart';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:uas_kelompok3/pages/home_page.dart';
import 'package:uas_kelompok3/pages/list_data.dart';
import 'package:uas_kelompok3/pages/tab_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
    },
  ));
}
