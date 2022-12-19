// import 'package:uas_kelompok3/models/item.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite/sqlite_api.dart';
// import 'package:path/path.dart';

// class DbHelper {
//   static final DbHelper _instance = DbHelper._internal();
//   static Database? _database;

//   final String tableName = 'tableItem';
//   final String columnId = 'id';
//   final String columnName = 'nama';
//   final String columnAlamat = 'alamat';
//   final String columnNim = 'nim';

//   DbHelper._internal();
//   factory DbHelper() => _instance;

//   Future<Database?> get _db async {
//     if (_database != null) {
//       return _database;
//     }
//     _database = await _initDb();
//     return _database;
//   }

//   Future<Database?> _initDb() async {
//     String databasePath = await getDatabasesPath();
//     String path = join(databasePath, 'item.db');

//     return await openDatabase(path, version: 1, onCreate: _onCreate);
//   }

//   //membuat tabel dan field-fieldnya
//   Future<void> _onCreate(Database db, int version) async {
//     var sql = "CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY, "
//         "$columnName TEXT,"
//         "$columnAlamat TEXT,"
//         "$columnNim TEXT,";

//     await db.execute(sql);
//   }

//   //insert
//   Future<int?> saveItem(Item item) async {
//     var dbClient = await _db;
//     return await dbClient!.insert(tableName, item.toMap());
//   }

//   //read database
//   Future<List?> getAllItem() async {
//     var dbClient = await _db;
//     var result = await dbClient!.query(tableName, columns: [
//       columnId,
//       columnName,
//       columnAlamat,
//       columnNim,
//     ]);

//     return result.toList();
//   }

//   //update database
//   Future<int?> updateItem(Item item) async {
//     var dbClient = await _db;
//     return await dbClient!.update(tableName, item.toMap(),
//         where: '$columnId = ?', whereArgs: [item.id]);
//   }

//   //hapus database
//   Future<int?> deleteItem(int id) async {
//     var dbClient = await _db;
//     return await dbClient!
//         .delete(tableName, where: '$columnId = ?', whereArgs: [id]);
//   }
// }
