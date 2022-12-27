import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/models/item.dart';

class BiodataPage extends StatefulWidget {
  const BiodataPage({Key key}) : super(key: key);

  @override
  State<BiodataPage> createState() => _BiodataPage();
}

Item item;

enum Gender { male, female }

class _BiodataPage extends State<BiodataPage> {
  // Radio Button
  Gender _gender = Gender.male;

  // Model
  // Item item;

  // Controller
  final nimController = TextEditingController();
  final namaController = TextEditingController();
  final alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    onChanged: ((Gender value) {
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
                    onChanged: ((Gender value) {
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
                  DbHelper.insert(Item(
                    int.parse(nimController.text),
                    namaController.text,
                    alamatController.text,
                    _gender.toString() == 'Gender.male' ? 'L' : 'P',
                  ));
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: const Text("Success"),
                            content: const Text("Data Berhasil Ditambahkan"),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(ctx);
                                  },
                                  child: const Text("OK"))
                            ],
                          ));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(left: 30, right: 30)),
                child: const Text("Save"),
              )),
          // ~~~~~~~~~~~~~~ End of Radio Button ~~~~~~~~~~~~~~~~~~~
        ],
      ),
    );
  }
}
