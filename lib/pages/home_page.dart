import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok3/models/item.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _Homepage();
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
  Widget build(Object context) {
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
                    child: Text(
                      'BIODATA',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 50),
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Tittle ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input NIM ~~~~~~~~~~~~~~~~

                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text('NIM :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      // controller: nim,
                    ),
                    margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                  ),
                  // ~~~~~~~~~~~~~~ End of Input NIM ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input Nama ~~~~~~~~~~~~~~~~
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text('Nama :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      // controller: nama,
                    ),
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                    // margin: const EdgeInsets.only(top: 20),,
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Nama ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Input Alamat ~~~~~~~~~~~~~~~~
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text('Alamat :'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      // controller: alamat,
                    ),
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                    // margin: const EdgeInsets.only(top: 20),,
                  ),
                  // ~~~~~~~~~~~~~~ End of Input Alamat ~~~~~~~~~~~~~~~~~~~

                  // ~~~~~~~~~~~~~~~~ Radio Button ~~~~~~~~~~~~~~~~

                  Container(
                    child: Row(children: <Widget>[
                      Expanded(
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
                          title: Text('P'),
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
                    margin: EdgeInsets.only(left: 50, right: 35, top: 20),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        child: Text("Add"),
                        onPressed: () {
                          // item = Item(
                          //   nimController.toString(),
                          //   namaController.text,
                          //   alamatController.text,
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(left: 30, right: 30)),
                      )),
                  // ~~~~~~~~~~~~~~ End of Radio Button ~~~~~~~~~~~~~~~~~~~
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Text('Test'),
                  )
                ],
              )
            ],
          )),
    ));
  }
}
