class Item {
  int? id;
  String? nama;
  String? alamat;
  String? nim;

  Item(this.id, this.nama, this.alamat, this.nim);

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
