class Item {
  int _nim;
  String _nama;
  String _alamat;
  String _jeniskelamin;

  int get nim => this._nim;

  set nim(int value) => this._nim = value;

  String get nama => this._nama;

  set nama(String value) => this._nama = value;

  String get alamat => this._alamat;

  set alamat(String value) => this._alamat = value;

  String get jeniskelamin => this._jeniskelamin;

  set jeniskelamin(String value) => this._jeniskelamin = value;

//KOnstruksi versi 1
  Item(this._nim, this._nama, this._alamat, this._jeniskelamin);

  Item.fromMap(Map<String, dynamic> map) {
    this._nim = map['nim'];
    this._nama = map['nama'];
    this._alamat = map['alamat'];
    this._jeniskelamin = map['jeniskelamin'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['nim'] = this._nim;
    map['nama'] = this._nama;
    map['alamat'] = this._alamat;
    map['jeniskelamin'] = this._jeniskelamin;
    return map;
  }
}
