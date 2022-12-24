import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok3/database/db_helper.dart';
import 'package:uas_kelompok3/models/item.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _Homepage();
}

class ListJoss extends StatelessWidget {
  final String nim;
  final String nama;

  const ListJoss({super.key, required this.nim, required this.nama});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              nim,
              style: new TextStyle(fontSize: 20.0),
            ),
            new Text(
              nama,
              style: new TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _Homepage extends State<HomePage> {
  // Radio Button
  Gender? _gender = Gender.male;

  // Model
  // Item item;

  // Controller
  final nimController = TextEditingController();
  final namaController = TextEditingController();
  final alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("UAS_KELOMPOK3"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: "Biodata"),
                Tab(text: "List Biodata"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  // ~~~~~~~~~~~~~~~~ Tittle ~~~~~~~~~~~~~~~~
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      'BIODATA',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Tittle ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input NIM ~~~~~~~~~~~~~~~~

                  Container(
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('NIM :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: nimController,
                    ),
                  ),
                  // ~~~~~~~~~~~~~~ End of Input NIM ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input Nama ~~~~~~~~~~~~~~~~
                  Container(
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Nama :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      controller: namaController,
                    ),
                    // margin: const EdgeInsets.only(top: 20),,
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Nama ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input Alamat ~~~~~~~~~~~~~~~~
                  Container(
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Alamat :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      controller: alamatController,
                    ),
                    // margin: const EdgeInsets.only(top: 20),,
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Alamat ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Radio Button ~~~~~~~~~~~~~~~~

                  Container(
                    margin: const EdgeInsets.only(left: 50, right: 35, top: 20),
                    child: Row(children: <Widget>[
                      const Expanded(
                          child: Text(
                        'Jenis Kelamin :',
                        style: TextStyle(fontSize: 16),
                      )),
                      Expanded(
                        child: ListTile(
                          title: Text('L'),
                          leading: Radio<Gender>(
                            value: Gender.male,
                            groupValue: _gender,
                            onChanged: ((Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            }),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('P'),
                          leading: Radio<Gender>(
                            value: Gender.female,
                            groupValue: _gender,
                            onChanged: ((Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            }),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          DbHelper().saveItem(Item(
                              Random().nextInt(999999),
                              nimController.text,
                              namaController.text,
                              alamatController.text));
                        },
                        style: ElevatedButton.styleFrom(
                            padding:
                                const EdgeInsets.only(left: 30, right: 30)),
                        child: const Text("Save"),
                      )),
                  // ~~~~~~~~~~~~~~ End of Radio Button ~~~~~~~~~~~~~~~~~~~
                ],
              ),
              Column(
                children: <Widget>[
                  new ListJoss(nim: "2041720068", nama: "Faiz")
                ],
              )
            ],
          )),
    ));
  }
}
