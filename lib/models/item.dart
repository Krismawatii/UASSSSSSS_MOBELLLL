<<<<<<< HEAD
class Item {
  int? id;
  String? nama;
  String? alamat;
  int? nim;

  Item({this.id, this.nama, this.alamat, this.nim});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nama'] = nama;
    map['alamat'] = alamat;
    map['nim'] = nim;

    return map;
  }

  Item.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.nama = map['nama'];
    this.alamat = map['alamat'];
    this.nim = map['nim'];
  }
}
=======
// import 'dart:html';

// class Item {
//   String _nama;
//   String _alamat;
//   int _nim;

//   String get nama => this._nama;
//   set nama(String value) => this._nama = value;

//   String get alamat => this._alamat;
//   set alamat(String value) => this._alamat = value;

//   get nim => this._nim;
//   set nim(value) => this._nim = value;

//   Item(this._nama, this._alamat, this._nim);

// //Konstruktor konversi dari Map ke Item
//   Item.fromMap(Map<String, dynamic> map) {
//     this._nama = map['nama'];
//     this._alamat = map['alamat'];
//     this._nim = map['nim'];
//   }

//   Map<String, dynamic> toMap() {
//     Map<String, dynamic> map = Map<String, dynamic>();
//     map['nama'] = this._nama;
//     map['alamat'] = alamat;
//     map['nim'] = nim;
//     return map;
//   }
// }
>>>>>>> 32b8f9e762351c51300d94318e1d03e32a7b47cb
