import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok3/database/DbHelper.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:uas_kelompok3/pages/biodata_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uas_kelompok3/pages/detail_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({
    Key key,
    this.id,
    this.nim,
    this.nama,
    this.alamat,
    this.jeniskelamin,
  }) : super(key: key);

  final int id;
  final int nim;
  final String nama;
  final String alamat;
  final String jeniskelamin;

  @override
  State<EditPage> createState() =>
      // ignore: no_logic_in_create_state
      _EditPage(id, nim, nama, alamat, jeniskelamin);
}

Item item;

enum Gender { male, female }

class _EditPage extends State<EditPage> {
  // id
  int id;

  // Radio Button
  Gender _gender = Gender.male;

  // Model
  // Item item;

  // Controller
  final nimController = TextEditingController();
  final namaController = TextEditingController();
  final alamatController = TextEditingController();

  _EditPage(
    this.id,
    int nim,
    String nama,
    String alamat,
    String jeniskelamin,
  ) {
    nimController.text = nim.toString();
    namaController.text = nama;
    alamatController.text = alamat;
    _gender = jeniskelamin == 'Laki-laki' ? Gender.male : Gender.female;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ~~~~~~~~~~~~~~~~ Tittle ~~~~~~~~~~~~~~~~
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: const Text(
              'Edit',
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
                  Item item = Item(
                    int.parse(nimController.text),
                    namaController.text,
                    alamatController.text,
                    _gender.toString() == 'Gender.male'
                        ? 'Laki-laki'
                        : 'Perempuan',
                  );

                  item.id = id;
                  DbHelper.update(item);
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: const Text("Success"),
                            content: const Text("Data Berhasil Diupdate"),
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
