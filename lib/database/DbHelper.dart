import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:uas_kelompok3/models/item.dart';
import 'package:sqflite/sqflite.dart' as db;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'dart:async';

import 'package:uas_kelompok3/pages/biodata_page.dart';

class DbHelper {
  static DbHelper _dbHelper;

  DbHelper._createObject();

  static Future<db.Database> initDb() async {
    String path = 'item2.db';

    //create,read database
    var itemDatabase = db.openDatabase(path, version: 8,
        onCreate: (db.Database database, int version) async {
      await _createDb(database);
    });
    return itemDatabase;
  }

  //membuat tabel dan field-fieldnya
  static Future<void> _createDb(db.Database db) async {
    await db.execute('''
  CREATE TABLE item(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nim INTEGER,
    nama TEXT,
    alamat TEXT,
    jeniskelamin TEXT
  )
  ''');
  }

  //SELECT
  static Future<List<Map<String, dynamic>>> select() async {
    final db = await DbHelper.initDb();
    return db.query('item', orderBy: 'id');
  }

  //CREATE
  static Future<int> insert(Item object) async {
    final db = await DbHelper.initDb();
    int count = await db.insert('item', object.toMap());
    return count;
  }

  //UPDATE
  static Future<int> update(Item object) async {
    final db = await DbHelper.initDb();
    int count = await db
        .update('item', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  //DELETE
  static Future<int> delete(int id) async {
    final db = await DbHelper.initDb();
    int count = await db.delete('item', where: 'id=?', whereArgs: [id]);
    return count;
  }

  static Future<List<Item>> getItemList() async {
    var itemMapList = await select();
    int count = itemMapList.length;
    List<Item> itemList = List<Item>();
    for (int i = 0; i < count; i++) {
      itemList.add(Item.fromMap(itemMapList[i]));
    }
    return itemList;
  }
}
