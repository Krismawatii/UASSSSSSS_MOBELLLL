class Item {
  int? id;
  String? nama;
  String? alamat;
  String? nim;

  Item(this.id, this.nama, this.alamat, this.nim);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    if (id != null) {
      map['id'] = id;
    }
    map['nama'] = nama;
    map['alamat'] = alamat;
    map['nim'] = nim;

    return map;
  }

  Item.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nama = map['nama'];
    alamat = map['alamat'];
    nim = map['nim'];
  }
}
